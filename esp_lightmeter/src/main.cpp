


/*
This example shows how to use a large number of the SSD1306 functions.
It is interactive, controlled by three buttons for up, down, and select.
*/

// Choose your I2C implementation before including Tiny4kOLED.h
// The default is selected is Wire.h

// To use the Wire library:
//#include <Wire.h>

// To use the Adafruit's TinyWireM library:
#include <TinyWireM.h>

// To use the TinyI2C library from https://github.com/technoblogy/tiny-i2c
//#include <TinyI2CMaster.h>

// The blue OLED screen requires a long initialization on power on.
// The code to wait for it to be ready uses 20 bytes of program storage space
// If you are using a white OLED, this can be reclaimed by uncommenting
// the following line (before including Tiny4kOLED.h):
//#define TINY4KOLED_QUICK_BEGIN

#include <Tiny4kOLED.h>
// ============================================================================

#include <avr/sleep.h>
#include "EEPROM.h"
// #include <BH1750.h>
#define adc_disable() (ADCSRA &= -(1<<ADEN))
#define adc_enable()  (ADCSRA |=  (!<<ADEN))


#define SENS_BH1750
#ifndef SENS_BH1750
#include "Adafruit_VEML7700.h"
  #define ALS_GAIN 11
  #define ALS_IT 6
  #define ALS_PERS 4

  #define VEML_GAIN VEML7700_GAIN_2
  #define VEML_IT VEML7700_IT_100MS
  #define VEML_PERS VEML7700_PERS_1
#else
  #define ONE_TIME_HIGH_RES_MODE 0x20
  #define SENSOR_ADDRESS 0x23
#endif

#define READ_INTERVAL 500
uint32_t last_lux_reading_time = 0;


uint8_t width = 128;
uint8_t height = 64;

const uint8_t rockerUpPin = 4;
const uint8_t rockerDownPin = 3;
const uint8_t rockerInPin = 1;

bool rockerUp = false;
bool rockerDown = false;
bool rockerIn = false;
bool rockerInChanged = false;

long debounceTime = 0L;
long lastWakeUp = 0L;
long debounceDelay = 100L;

bool switchingSettingLine = true;

bool performFrameSwitch = true;

const long repeatInputInterval = 200L;
long timeChangedInput = 0;

// The screen can show 4 setting lines at once.
uint8_t settingsPage = 0;
bool changedSettingsPage = false;
uint8_t redrawsSettingsPage = 2;

void NoOutput(uint8_t m, uint8_t value);
void OutputNum(uint8_t, uint16_t);
void OutputYN(uint8_t, uint8_t);

void NoAction(uint8_t);

#define CURRENT_SETTING_LINE 0
void OutputCurrentSettingLine(uint8_t, uint8_t);
void CurrentSettingLineChanged(uint8_t);

#define ISO_VALUE (CURRENT_SETTING_LINE+1)
const char ISO_NAME[] PROGMEM = "Iso";
void OutputScrollIso(uint8_t, uint8_t);
#define ISO_N_VALUES 6
const uint16_t scrollIso[ISO_N_VALUES] = {100,
                        200,
                        400,500,
                        800,
                        1600};
void IsoChanged(uint8_t value) {
  EEPROM.update(ISO_VALUE, value);
}

#define SHUTTER_VALUE (ISO_VALUE+1)
const char SHUTTER_NAME[] PROGMEM = "Shutter";
void OutputScrollShutter(uint8_t, uint8_t);
#define SHUTTER_N_VALUES 4
const uint8_t scrollShutter[SHUTTER_N_VALUES] = {30,60,125,175};
void ShutterChanged(uint8_t value) {
  EEPROM.update(SHUTTER_VALUE, value);
}

#define APERTURE_VALUE (SHUTTER_VALUE+1)
const char APERTURE_NAME[] PROGMEM = "Aperture";
void OutputScrollAperture(uint8_t, uint8_t);
#define APERTURE_N_VALUES 12
const float scrollAperture[APERTURE_N_VALUES] = {2.8,3.3,
                            4,4.8,
                            5.6,6.7,
                            8,9.5,
                            11,13,
                            16,
                            22};
void ApertureChanged(uint8_t value) {
  EEPROM.update(APERTURE_VALUE, value);
}


#define DO_APERTURE_VALUE (APERTURE_VALUE+1)
const char DO_APERTURE_NAME[] PROGMEM = "Do Aperture";
void DoApertureChanged(uint8_t value) {
  EEPROM.update(DO_APERTURE_VALUE, value);
}

#define METER_INCIDENT_VALUE (DO_APERTURE_VALUE+1)
const char METER_INCIDENT_NAME[] PROGMEM = "Meter Incident";
void MeterIncidentChanged(__attribute__((unused)) uint8_t value) {
  EEPROM.update(METER_INCIDENT_VALUE, value);
}
const uint16_t constantOptions[2] = {12,320};
const float lightCorrectionOptions[2] = {12.5,1};

float luxReading = 0;
bool lux_reading_changed = true;
#define LUX_VALUE (METER_INCIDENT_VALUE+1)
const char LUX_NAME[] PROGMEM = "Lux";
void LuxChanged(uint8_t value) ;
void OutputLux(uint8_t m, uint8_t value) ;

#define CURRENT_VOLTAGE_VALUE (LUX_VALUE+1)
const char CURRENT_VOLTAGE_NAME[] PROGMEM = "Vcc";
void OutputCurrentVoltage(uint8_t, uint8_t);

const uint8_t settingLines = CURRENT_VOLTAGE_VALUE;

uint8_t setting_changed = settingLines + 1;

typedef void (*ActionFunc) (uint8_t);
typedef void (*OutputFunc) (uint8_t, uint8_t);

struct {
  PGM_P name;
  const uint8_t min;
  const uint8_t max;
  const ActionFunc actionFn;
  const OutputFunc outputFn;
} const s[settingLines+1] PROGMEM = {
// name                     min max    action                     output
  {NULL,                      1,  settingLines, 
                                       CurrentSettingLineChanged, OutputCurrentSettingLine},
  {ISO_NAME,                  0,  ISO_N_VALUES-1,   IsoChanged,           OutputScrollIso},
  {SHUTTER_NAME,              0,  SHUTTER_N_VALUES-1,     ShutterChanged,            OutputScrollShutter},
  {APERTURE_NAME,             0,  APERTURE_N_VALUES-1,     ApertureChanged,             OutputScrollAperture},

  {DO_APERTURE_NAME,          0,  1,    DoApertureChanged,       OutputYN},
  {METER_INCIDENT_NAME,       0,  1,    MeterIncidentChanged,    OutputYN},
  {LUX_NAME,                  0,  1,     LuxChanged,             OutputLux},

  {CURRENT_VOLTAGE_NAME,    0,  255,   NoAction,                  OutputCurrentVoltage}
};

uint8_t v[settingLines+1] = {
  1, // CURRENT_SETTING_LINE

  0, // ISO_VALUE
  0,    // SHUTTER_VALUE
  0,    // APERTURE_VALUE

  0,    // DO_APERTURE_VALUE
  0,    // METER_INCIDENT_VALUE
  0,    // LUX_VALUE

  0     // CURRENT_VOLTAGE_VALUE (Unused)
};

uint8_t r[settingLines+1] = { 0, 0,0,0, 0,0,0, 0,};


void sleepWaitingForInput(uint8_t pins) {
  // Don't sleep till after the debounce period - as otherwise a bounce will wake it up
  long currentTime = millis();
  if (currentTime < debounceTime && currentTime >= lastWakeUp) // time might wrap
  {
    return;
  }
  uint8_t temp = TIMSK;
  TIMSK = 0;                         // Disable timer interrupt(s)
  GIMSK = 1<<PCIE;                   // Enable pin-change interrupt
  PCMSK = pins;
  ADCSRA &= ~(1<<ADEN);              // Disable ADC to save power
  sleep_enable();
  sleep_cpu();

  GIMSK = 0;                         // Turn off interrupt
  TIMSK = temp;                      // Re-enable timer interrupt(s)
  ADCSRA |= 1<<ADEN;                 // Re-enable ADC
  lastWakeUp = millis();
  debounceTime = lastWakeUp;
}

void setupSensor(){ // Setup the veml7700 for one-shot mode
  #ifndef SENS_BH1750
    TinyWireM.begin();
    TinyWireM.beginTransmission(VEML7700_I2CADDR_DEFAULT);
    TinyWireM.send(VEML7700_ALS_CONFIG);                 // Access Command Register

    TinyWireM.send((VEML_GAIN<<ALS_GAIN) | (VEML_IT<<ALS_IT) | (VEML_PERS<<ALS_PERS));            // Using one-shot mode for battery savings
    //TinyWireM.send(B00000000);          // if setting continious mode for fast reads
    TinyWireM.endTransmission();          // Send to the slave
  #else    
    TinyWireM.begin();
    TinyWireM.beginTransmission(SENSOR_ADDRESS);
    TinyWireM.send(ONE_TIME_HIGH_RES_MODE);
    TinyWireM.endTransmission();          // Send to the slave
  #endif
}
float getLux(){  // Get the temperature from a DS1621
  #ifndef SENS_BH1750
    float scaler =0.0576;
    #if VEML_GAIN == VEML7700_GAIN_2
      scaler/=2;
    #elif VEML_GAIN == VEML7700_GAIN_1_4
      scaler*=4;
    #elif VEML_GAIN == VEML7700_GAIN_1_8
      scaler*=8;
    #endif
    #if VEML_IT == VEML7700_IT_25MS
      scaler*=4;
    #elif VEML_IT == VEML7700_IT_50MS
      scaler*=2;
    #elif VEML_IT == VEML7700_IT_200MS
      scaler/=2;
    #elif VEML_IT == VEML7700_IT_400MS
      scaler/=4;
    #elif VEML_IT == VEML7700_IT_800MS
      scaler/=8;
    #endif
  #else
    float scaler =1.2;
  #endif

  #ifndef SENS_BH1750
    TinyWireM.beginTransmission(VEML7700_I2CADDR_DEFAULT);
    TinyWireM.send(VEML7700_WHITE_DATA);                 // read temperature (for either mode)
    TinyWireM.endTransmission();          // Send 1 byte to the slave
    TinyWireM.requestFrom(VEML7700_I2CADDR_DEFAULT,2); // Request 1 byte from slave

    uint16_t rawLSB = TinyWireM.receive();
    uint16_t rawMSB = TinyWireM.receive();
  #else
    TinyWireM.beginTransmission(SENSOR_ADDRESS);
    TinyWireM.send(ONE_TIME_HIGH_RES_MODE);                 // read temperature (for either mode)
    TinyWireM.endTransmission();          // Send 1 byte to the slave
    TinyWireM.requestFrom(SENSOR_ADDRESS,2); // Request 1 byte from slave

    uint16_t rawMSB = TinyWireM.receive();
    uint16_t rawLSB = TinyWireM.receive();
  #endif


  luxReading=float((rawMSB<<8)|rawLSB)*scaler ;
  lux_reading_changed = true;

  return luxReading;
}

void setupPins() {
  pinMode(rockerUpPin, INPUT_PULLUP);
  pinMode(rockerDownPin, INPUT_PULLUP);
  pinMode(rockerInPin, INPUT_PULLUP);
}

void setupOLED() {
  oled.begin();//width, height, sizeof(tiny4koled_init_128x64br), tiny4koled_init_128x64br

  // Two rotations are supported,
  // The begin() method sets the rotation to 1.
  //oled.setRotation(0);

  // Some newer devices do not contain an external current reference.
  // Older devices may also support using the internal curret reference,
  // which provides more consistent brightness across devices.
  // The internal current reference can be configured as either low current, or high current.
  // Using true as the parameter value choses the high current internal current reference,
  // resulting in a brighter display, and a more effective iso setting.
  //oled.setInternalIref(true);

  // Two fonts are supplied with this library, FONT8X16 and FONT6X8
  // Other fonts are available from the TinyOLED-Fonts library
  oled.setFont(FONT6X8CAPS);
  oled.clear();
  oled.on();
  oled.switchRenderFrame();
  oled.clear();
}



void setupADC() {
  ADMUX = 0b1100<<MUX0; // Vcc Ref, Measure bandgap voltage (1.1)
  ADCSRA = 1<<ADEN | 4<<ADPS0;            // Enable, 62.5kHz ADC clock (16x prescalar)
}




unsigned int readADC() {
  unsigned char low,high;
  ADCSRA = ADCSRA | 1<<ADSC;     // Start
  do {} while (ADCSRA & 1<<ADSC); // Wait while conversion in progress
  low = ADCL;
  high = ADCH;
  return (high<<8 | low);
}


void readInputs() {
  bool oldRockerUp = rockerUp;
  bool oldRockerDown = rockerDown;
  bool oldRockerIn = rockerIn;
  rockerUp = digitalRead(rockerUpPin)==LOW;
  rockerDown = digitalRead(rockerDownPin)==LOW;
  rockerIn = digitalRead(rockerInPin)==LOW;
  rockerInChanged = false;
  if ((oldRockerUp != rockerUp) || (oldRockerDown != rockerDown) || (oldRockerIn != rockerIn))
  {
    long currentTime = millis();
    if (currentTime < debounceTime && currentTime >= lastWakeUp) // time might wrap
    {
      return;
    }
    debounceTime = currentTime + debounceDelay;
  }
  if (oldRockerIn != rockerIn)
  {
    rockerInChanged = true;
  }
}


void processInputsForSetting(uint8_t m) {
  long ms = millis();
  if ((ms > timeChangedInput) && ((ms - timeChangedInput) < repeatInputInterval)) return;
  uint8_t value = v[m];
  uint8_t oldValue = value;
  bool inc = rockerUp;
  bool dec = rockerDown;
  if (m == CURRENT_SETTING_LINE) {
    inc = rockerDown;
    dec = rockerUp;
  }
  if (inc && (value < pgm_read_byte(&(s[m].max)))) value++;
  else if (inc && (value >= pgm_read_byte(&(s[m].max)))) value=pgm_read_byte(&(s[m].min)); // not sure if it works. makes it loop back
  if (dec && (value > pgm_read_byte(&(s[m].min)))) value--;
  else if (dec && (value <= pgm_read_byte(&(s[m].min)))) value=pgm_read_byte(&(s[m].max)); // not sure if it works. makes it loop back

  if (oldValue != value) {
    setting_changed = m;
    v[m] = value;
  }
}

void processInputsSwitchingSettingLine() {
  processInputsForSetting(CURRENT_SETTING_LINE);
  if (setting_changed == CURRENT_SETTING_LINE) {
    uint8_t oldSettingsPage = settingsPage;
    settingsPage = (v[CURRENT_SETTING_LINE] - 1) >> 2;
    changedSettingsPage = oldSettingsPage != settingsPage;
  }
}

void processInputs() {
  if (switchingSettingLine) {
    processInputsSwitchingSettingLine();
  } else {
    processInputsForSetting(v[CURRENT_SETTING_LINE]);
  }
  if (rockerInChanged && rockerIn) {
    switchingSettingLine = !switchingSettingLine;
    setting_changed = CURRENT_SETTING_LINE;
  }
}

// this gets called in a loop for every value in the settings array
#define DOUBLE_BUFFER 1
bool CheckValueChanged(uint8_t m) {

  if (setting_changed == m) {
    setting_changed = settingLines + 1;
    r[m]=DOUBLE_BUFFER + 1;

    if  (!(((m-1)^(SHUTTER_VALUE-1)) & 0b1100)) {
      r[SHUTTER_VALUE] = DOUBLE_BUFFER + 1;// not sure if it works
    }
    if  (!(((m-1)^(APERTURE_VALUE-1)) & 0b1100)) {
      r[APERTURE_VALUE] = DOUBLE_BUFFER + 1;// not sure if it works
    }
    timeChangedInput=millis();
    return true;
  }
  return false;
}

void setRedrawFlagForMeteredValue() {
  if (lux_reading_changed) {
    lux_reading_changed = false;

    if  (!(((v[CURRENT_SETTING_LINE]-1)^(SHUTTER_VALUE-1+v[DO_APERTURE_VALUE])) >>2)) {
      r[SHUTTER_VALUE+v[DO_APERTURE_VALUE]] = DOUBLE_BUFFER + 1;// not sure if it works
    }
    if  (!(((v[CURRENT_SETTING_LINE]-1)^(LUX_VALUE-1)) >>2)) {
      r[LUX_VALUE] = DOUBLE_BUFFER + 1;// not sure if it works
    }
  }
}


void LuxChanged(uint8_t value) {
  // r[SHUTTER_VALUE] = 
  // lux_reading_changed = false;
}


// checks changes in all values and performs their change_function once found
void processChanges() {
  for (uint8_t m = 0; m <= settingLines; m++)
    if (CheckValueChanged(m)) ((ActionFunc)pgm_read_ptr(&(s[m].actionFn)))(v[m]);
}

void NoAction(__attribute__((unused)) uint8_t value) {}

void CurrentSettingLineChanged(__attribute__((unused)) uint8_t value) {
  if (changedSettingsPage) {
    redrawsSettingsPage=DOUBLE_BUFFER + 1;
  }
}

bool CheckRedraw(uint8_t m) {
  if (r[m] > 0) {
    r[m]--;
    performFrameSwitch = true;
    return true;
  }
  return false;
}


void OutputSettingsPage() {
  oled.clear();
  r[CURRENT_SETTING_LINE]=redrawsSettingsPage;
  uint8_t m = settingsPage * 4 + 1;
  for (uint8_t l = 0; (l < 4) && (m <= settingLines); l++, m++) {
    oled.setCursor(0, l);
    for (uint8_t k = 0; k < strlen_P((PGM_P)pgm_read_word(&(s[m].name))); k++)
    {
      char myChar =  pgm_read_byte((PGM_P)pgm_read_word(&(s[m].name)) + k);
      oled.print(myChar);
    }
    oled.print(':');
    r[m]=redrawsSettingsPage;
  }
}

void PositionCursor(uint8_t m) {
  oled.setCursor((strlen_P((PGM_P)pgm_read_word(&(s[m].name))) + 2) * 6, (m - 1) & 0x03);
}

void OutputNumOnly(uint16_t value) {
  oled.print(value);
  // if (value<1000) oled.print(' ');
  // if (value<100) oled.print(' ');
  // if (value<10) oled.print(' ');
}

void OutputNumOnlyFloat(float value) {
  oled.print(value);
  // if (value<1000) oled.print(' ');
  // if (value<100) oled.print(' ');
  // if (value<10) oled.print(' ');
}

void NoOutput(__attribute__((unused)) uint8_t m, __attribute__((unused)) uint8_t value) {}

void OutputCurrentSettingLine(__attribute__((unused)) uint8_t m, uint8_t value) {
  uint8_t currentLine = (value - 1) & 0x03;
  for (uint8_t l = 0; l < 4; l++) {
    oled.setCursor(120, l);
    if (l == currentLine) {
      if (switchingSettingLine)
        oled.print('-');
      else
        oled.print('<');
    } else {
      oled.print(' ');
    }
  }
}

void OutputNum(uint8_t m, uint16_t value) {
  PositionCursor(m);
  OutputNumOnly(value);
}

void OutputYN(uint8_t m, uint8_t value) {
  PositionCursor(m);
  if (value)
    oled.print('Y');
  else
    oled.print('N');
}

void clearToEOL(uint8_t m){
  //PositionCursor(m);
  uint8_t length = 120 - oled.getCursorX();//(strlen_P((PGM_P)pgm_read_word(&(s[m].name))) + 2) * 6;
  oled.fillLength(0x00, length);
}

void OutputScrollIso(uint8_t m, uint8_t value) {
  PositionCursor(m);
  OutputNumOnly(scrollIso[value]);
  clearToEOL(m);
}
void OutputScrollShutter(uint8_t m, uint8_t value) {
  PositionCursor(m);

  if (!v[DO_APERTURE_VALUE]) {
    uint16_t constant = constantOptions[v[METER_INCIDENT_VALUE]];
    float lightCorrection = lightCorrectionOptions[v[METER_INCIDENT_VALUE]];
    float light = getLux() * lightCorrection;
    OutputNumOnlyFloat(1/(pow(scrollAperture[v[APERTURE_VALUE]],2)*constant/(light*scrollIso[v[ISO_VALUE]])));
    oled.print("<<");
  }
  else {
    OutputNumOnly(scrollShutter[value]);
  }
  clearToEOL(m);
  
}
void OutputScrollAperture(uint8_t m, uint8_t value) {
  PositionCursor(m);

  if (v[DO_APERTURE_VALUE]) {
    uint16_t constant = constantOptions[v[METER_INCIDENT_VALUE]];
    float lightCorrection = lightCorrectionOptions[v[METER_INCIDENT_VALUE]];
    float light = getLux() * lightCorrection;
    OutputNumOnlyFloat(sqrt(1./scrollShutter[v[SHUTTER_VALUE]]*light*scrollIso[v[ISO_VALUE]]/constant));
    oled.print("<<");
  }
  else {
    OutputNumOnlyFloat(scrollAperture[value]);
  }
  clearToEOL(m);

}

void OutputLux(uint8_t m, uint8_t value) {
  PositionCursor(m);
  OutputNumOnlyFloat(luxReading);
  clearToEOL(m);
}


// void OutputScrollInterval(uint8_t m, uint8_t value) {
//   PositionCursor(m);
//   OutputNumOnly(scrollIntervalFrames[value]);
// }


void OutputScrollDirection(uint8_t m, uint8_t value) {
  PositionCursor(m);
  if (value == 0) oled.print('L');
  else if (value == 1) oled.print('-');
  else oled.print('R');
}

void OutputCurrentVoltage(uint8_t m, __attribute__((unused)) uint8_t value) {
  PositionCursor(m);
  unsigned int result = readADC();
  result = 1126400L / result; // Calculate Vcc (in mV); 1.1*1024*1000
  oled.print(result);
  oled.print(F(" mV"));
}

void updateDisplay() {
  performFrameSwitch = false;
  
  if (redrawsSettingsPage > 0) {
    OutputSettingsPage();
    redrawsSettingsPage--;
    performFrameSwitch = true;
  }

  // if (r[APERTURE_VALUE] || r[SHUTTER_VALUE] || r[ISO_VALUE] || r[DO_APERTURE_VALUE] || r[METER_INCIDENT_VALUE] || r[LUX_VALUE]) {
  //   r[SHUTTER_VALUE+v[DO_APERTURE_VALUE]]=redrawsSettingsPage;
  // }

  for (uint8_t m = 0; m <= settingLines; m++)
    if (CheckRedraw(m)) ((OutputFunc)pgm_read_ptr(&(s[m].outputFn)))(m, v[m]);


  //((OutputFunc)pgm_read_ptr(&(s[SHUTTER_VALUE+v[DO_APERTURE_VALUE]].outputFn)))(SHUTTER_VALUE+v[DO_APERTURE_VALUE], v[SHUTTER_VALUE+v[DO_APERTURE_VALUE]]);


  if (performFrameSwitch && DOUBLE_BUFFER) oled.switchFrame();
}

ISR(PCINT0_vect) {}

void setup() {
  setupPins();
  setupOLED();
  setupADC();
  setupSensor();
  set_sleep_mode(SLEEP_MODE_PWR_DOWN);
}


void loop() {
  if (millis() - last_lux_reading_time > READ_INTERVAL) {
    last_lux_reading_time = millis();
    getLux(); // store new value in global variable
    setRedrawFlagForMeteredValue(); // set redraw flag for metered variable using stored lux measurement
  }
  if (!performFrameSwitch && !rockerIn && !rockerUp && !rockerDown)
    sleepWaitingForInput((1<<rockerUpPin) | (1<<rockerDownPin) | (1<<rockerInPin));
  readInputs();
  processInputs();
  processChanges();
  updateDisplay();
}
