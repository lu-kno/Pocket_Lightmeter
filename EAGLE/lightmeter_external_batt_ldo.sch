<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="yes" active="yes"/>
<layer number="100" name="Mechanical" color="7" fill="1" visible="no" active="no"/>
<layer number="101" name="Hidden" color="15" fill="1" visible="yes" active="yes"/>
<layer number="102" name="Changes" color="12" fill="1" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="14" fill="1" visible="no" active="no"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="no" active="no"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
<layer number="254" name="OrgLBR" color="13" fill="1" visible="no" active="no"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="SamacSys_Parts">
<description>&lt;b&gt;https://componentsearchengine.com&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="VEML7700">
<description>&lt;b&gt;VEML7700&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="1.495" y="-0.4" dx="1.6" dy="0.7" layer="1" rot="R90"/>
<smd name="2" x="2.765" y="-0.4" dx="1.6" dy="0.7" layer="1" rot="R90"/>
<smd name="3" x="4.035" y="-0.4" dx="1.6" dy="0.7" layer="1" rot="R90"/>
<smd name="4" x="5.305" y="-0.4" dx="1.6" dy="0.7" layer="1" rot="R90"/>
<text x="3.083459375" y="1.75438125" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="3.083459375" y="1.75438125" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="0" y1="3.2" x2="6.8" y2="3.2" width="0.2" layer="51"/>
<wire x1="6.8" y1="3.2" x2="6.8" y2="0" width="0.2" layer="51"/>
<wire x1="6.8" y1="0" x2="0" y2="0" width="0.2" layer="51"/>
<wire x1="0" y1="0" x2="0" y2="3.2" width="0.2" layer="51"/>
<wire x1="0" y1="3.2" x2="6.8" y2="3.2" width="0.2" layer="21"/>
<wire x1="6.8" y1="3.2" x2="6.8" y2="0" width="0.2" layer="21"/>
<wire x1="0" y1="3.2" x2="0" y2="0" width="0.2" layer="21"/>
<wire x1="0" y1="0" x2="0.944" y2="0" width="0.2" layer="21"/>
<wire x1="6.8" y1="0" x2="5.92" y2="0" width="0.2" layer="21"/>
<circle x="0.61" y="-0.942" radius="0.11968125" width="0.2" layer="25"/>
</package>
<package name="DIP794W56P254L1918H533Q14N">
<description>&lt;b&gt;14P3&lt;/b&gt;&lt;br&gt;
</description>
<pad name="1" x="-3.969" y="7.62" drill="0.759" diameter="1.159" shape="square"/>
<pad name="2" x="-3.969" y="5.08" drill="0.759" diameter="1.159"/>
<pad name="3" x="-3.969" y="2.54" drill="0.759" diameter="1.159"/>
<pad name="4" x="-3.969" y="0" drill="0.759" diameter="1.159"/>
<pad name="5" x="-3.969" y="-2.54" drill="0.759" diameter="1.159"/>
<pad name="6" x="-3.969" y="-5.08" drill="0.759" diameter="1.159"/>
<pad name="7" x="-3.969" y="-7.62" drill="0.759" diameter="1.159"/>
<pad name="8" x="3.969" y="-7.62" drill="0.759" diameter="1.159"/>
<pad name="9" x="3.969" y="-5.08" drill="0.759" diameter="1.159"/>
<pad name="10" x="3.969" y="-2.54" drill="0.759" diameter="1.159"/>
<pad name="11" x="3.969" y="0" drill="0.759" diameter="1.159"/>
<pad name="12" x="3.969" y="2.54" drill="0.759" diameter="1.159"/>
<pad name="13" x="3.969" y="5.08" drill="0.759" diameter="1.159"/>
<pad name="14" x="3.969" y="7.62" drill="0.759" diameter="1.159"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-4.957" y1="10.092" x2="4.957" y2="10.092" width="0.05" layer="51"/>
<wire x1="4.957" y1="10.092" x2="4.957" y2="-10.092" width="0.05" layer="51"/>
<wire x1="4.957" y1="-10.092" x2="-4.957" y2="-10.092" width="0.05" layer="51"/>
<wire x1="-4.957" y1="-10.092" x2="-4.957" y2="10.092" width="0.05" layer="51"/>
<wire x1="-3.556" y1="9.842" x2="3.556" y2="9.842" width="0.1" layer="51"/>
<wire x1="3.556" y1="9.842" x2="3.556" y2="-9.842" width="0.1" layer="51"/>
<wire x1="3.556" y1="-9.842" x2="-3.556" y2="-9.842" width="0.1" layer="51"/>
<wire x1="-3.556" y1="-9.842" x2="-3.556" y2="9.842" width="0.1" layer="51"/>
<wire x1="-3.556" y1="8.572" x2="-2.286" y2="9.842" width="0.1" layer="51"/>
<wire x1="-4.548" y1="9.842" x2="3.556" y2="9.842" width="0.2" layer="21"/>
<wire x1="-3.556" y1="-9.842" x2="3.556" y2="-9.842" width="0.2" layer="21"/>
</package>
<package name="TS056650BK260SMT67">
<description>&lt;b&gt;TS05-66-50-BK-260-SMT-67-2&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-4.125" y="2.25" dx="1.75" dy="1.5" layer="1"/>
<smd name="2" x="-4.125" y="-2.25" dx="1.75" dy="1.5" layer="1"/>
<smd name="3" x="4.125" y="2.25" dx="1.75" dy="1.5" layer="1"/>
<smd name="4" x="4.125" y="-2.25" dx="1.75" dy="1.5" layer="1"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-3.05" y1="3.05" x2="3.05" y2="3.05" width="0.1" layer="51"/>
<wire x1="3.05" y1="3.05" x2="3.05" y2="-3.05" width="0.1" layer="51"/>
<wire x1="3.05" y1="-3.05" x2="-3.05" y2="-3.05" width="0.1" layer="51"/>
<wire x1="-3.05" y1="-3.05" x2="-3.05" y2="3.05" width="0.1" layer="51"/>
<wire x1="-6" y1="4.05" x2="6" y2="4.05" width="0.1" layer="51"/>
<wire x1="6" y1="4.05" x2="6" y2="-4.05" width="0.1" layer="51"/>
<wire x1="6" y1="-4.05" x2="-6" y2="-4.05" width="0.1" layer="51"/>
<wire x1="-6" y1="-4.05" x2="-6" y2="4.05" width="0.1" layer="51"/>
<wire x1="-5.6" y1="2.2" x2="-5.6" y2="2.2" width="0.1" layer="21"/>
<wire x1="-5.6" y1="2.2" x2="-5.5" y2="2.2" width="0.1" layer="21" curve="180"/>
<wire x1="-5.5" y1="2.2" x2="-5.5" y2="2.2" width="0.1" layer="21"/>
<wire x1="-5.5" y1="2.2" x2="-5.6" y2="2.2" width="0.1" layer="21" curve="180"/>
</package>
</packages>
<symbols>
<symbol name="VEML7700-TT">
<wire x1="5.08" y1="2.54" x2="17.78" y2="2.54" width="0.254" layer="94"/>
<wire x1="17.78" y1="-10.16" x2="17.78" y2="2.54" width="0.254" layer="94"/>
<wire x1="17.78" y1="-10.16" x2="5.08" y2="-10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-10.16" width="0.254" layer="94"/>
<text x="19.05" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="19.05" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="SCL" x="0" y="0" length="middle"/>
<pin name="VDD" x="0" y="-2.54" length="middle"/>
<pin name="GND" x="0" y="-5.08" length="middle"/>
<pin name="SDA" x="0" y="-7.62" length="middle"/>
</symbol>
<symbol name="ATTINY84-20PU">
<wire x1="5.08" y1="2.54" x2="93.98" y2="2.54" width="0.254" layer="94"/>
<wire x1="93.98" y1="-17.78" x2="93.98" y2="2.54" width="0.254" layer="94"/>
<wire x1="93.98" y1="-17.78" x2="5.08" y2="-17.78" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-17.78" width="0.254" layer="94"/>
<text x="95.25" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="95.25" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="VCC" x="0" y="0" length="middle"/>
<pin name="(PCINT8/XTAL1/CLKI)_PB0" x="0" y="-2.54" length="middle"/>
<pin name="(PCINT9/XTAL2)_PB1" x="0" y="-5.08" length="middle"/>
<pin name="(PCINT11/!RESET!/DW)_PB3" x="0" y="-7.62" length="middle"/>
<pin name="(PCINT10/INT0/OC0A/CKOUT)_PB2" x="0" y="-10.16" length="middle"/>
<pin name="(PCINT7/ICP/OC0B/ADC7)_PA7" x="0" y="-12.7" length="middle"/>
<pin name="(PCINT6/OC1A/SDA/MOSI/DI/ADC6)_PA6" x="0" y="-15.24" length="middle"/>
<pin name="GND" x="99.06" y="0" length="middle" rot="R180"/>
<pin name="PA0_(ADC0/AREF/PCINT0)" x="99.06" y="-2.54" length="middle" rot="R180"/>
<pin name="PA1_(ADC1/AIN0/PCINT1)" x="99.06" y="-5.08" length="middle" rot="R180"/>
<pin name="PA2_(ADC2/AIN1/PCINT2)" x="99.06" y="-7.62" length="middle" rot="R180"/>
<pin name="PA3_(ADC3/T0/PCINT3)" x="99.06" y="-10.16" length="middle" rot="R180"/>
<pin name="PA4_(ADC4/USCK/SCL/T1/PCINT4)" x="99.06" y="-12.7" length="middle" rot="R180"/>
<pin name="PA5_(ADC5/DO/MISO/OC1B/PCINT5)" x="99.06" y="-15.24" length="middle" rot="R180"/>
</symbol>
<symbol name="TS05-66-50-BK-260-SMT-67">
<wire x1="5.08" y1="2.54" x2="25.4" y2="2.54" width="0.254" layer="94"/>
<wire x1="25.4" y1="-5.08" x2="25.4" y2="2.54" width="0.254" layer="94"/>
<wire x1="25.4" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<text x="26.67" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="26.67" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="NO_1" x="0" y="0" length="middle"/>
<pin name="COM_1" x="0" y="-2.54" length="middle"/>
<pin name="NO_2" x="30.48" y="0" length="middle" rot="R180"/>
<pin name="COM_2" x="30.48" y="-2.54" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VEML7700-TT" prefix="IC">
<description>&lt;b&gt;16Bit Ambient Light Sensor I2C 6.8x2.3mm&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.arrow.com/en/products/veml7700-tt/vishay"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="VEML7700-TT" x="0" y="0"/>
</gates>
<devices>
<device name="" package="VEML7700">
<connects>
<connect gate="G$1" pin="GND" pad="3"/>
<connect gate="G$1" pin="SCL" pad="1"/>
<connect gate="G$1" pin="SDA" pad="4"/>
<connect gate="G$1" pin="VDD" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="16Bit Ambient Light Sensor I2C 6.8x2.3mm" constant="no"/>
<attribute name="HEIGHT" value="mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Vishay" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="VEML7700-TT" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="78-VEML7700-TT" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Vishay-Semiconductors/VEML7700-TT?qs=BcfjnG7NVaXdL6DJFdWbdw%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ATTINY84-20PU" prefix="IC">
<description>&lt;b&gt;Microcontroller AVR, 8KB FLASH, 512B EE ATTINY84-20PU, 8 bit AVR Microcontroller 20MHz 512 B, 8 kB Flash, 512 B RAM, I2C 14-Pin PDIP&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://datasheet.datasheetarchive.com/originals/distributors/Datasheets_SAMA/1a4ee99e4eb61e76f001b846a746d522.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="ATTINY84-20PU" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIP794W56P254L1918H533Q14N">
<connects>
<connect gate="G$1" pin="(PCINT10/INT0/OC0A/CKOUT)_PB2" pad="5"/>
<connect gate="G$1" pin="(PCINT11/!RESET!/DW)_PB3" pad="4"/>
<connect gate="G$1" pin="(PCINT6/OC1A/SDA/MOSI/DI/ADC6)_PA6" pad="7"/>
<connect gate="G$1" pin="(PCINT7/ICP/OC0B/ADC7)_PA7" pad="6"/>
<connect gate="G$1" pin="(PCINT8/XTAL1/CLKI)_PB0" pad="2"/>
<connect gate="G$1" pin="(PCINT9/XTAL2)_PB1" pad="3"/>
<connect gate="G$1" pin="GND" pad="14"/>
<connect gate="G$1" pin="PA0_(ADC0/AREF/PCINT0)" pad="13"/>
<connect gate="G$1" pin="PA1_(ADC1/AIN0/PCINT1)" pad="12"/>
<connect gate="G$1" pin="PA2_(ADC2/AIN1/PCINT2)" pad="11"/>
<connect gate="G$1" pin="PA3_(ADC3/T0/PCINT3)" pad="10"/>
<connect gate="G$1" pin="PA4_(ADC4/USCK/SCL/T1/PCINT4)" pad="9"/>
<connect gate="G$1" pin="PA5_(ADC5/DO/MISO/OC1B/PCINT5)" pad="8"/>
<connect gate="G$1" pin="VCC" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Microcontroller AVR, 8KB FLASH, 512B EE ATTINY84-20PU, 8 bit AVR Microcontroller 20MHz 512 B, 8 kB Flash, 512 B RAM, I2C 14-Pin PDIP" constant="no"/>
<attribute name="HEIGHT" value="5.334mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Microchip" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="ATTINY84-20PU" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="556-ATTINY84-20PU" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Microchip-Technology-Atmel/ATTINY84-20PU?qs=2nyfZ6BV3ohef4pLj0igDg%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TS05-66-50-BK-260-SMT-67" prefix="IC">
<description>&lt;b&gt;Tactile Switches 6 x 6 mm, 5 mm Act Height, 260 gf, Black, Surface Mount, IP67, SPST,&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.cuidevices.com/product/resource/ts05.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="TS05-66-50-BK-260-SMT-67" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TS056650BK260SMT67">
<connects>
<connect gate="G$1" pin="COM_1" pad="2"/>
<connect gate="G$1" pin="COM_2" pad="4"/>
<connect gate="G$1" pin="NO_1" pad="1"/>
<connect gate="G$1" pin="NO_2" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Tactile Switches 6 x 6 mm, 5 mm Act Height, 260 gf, Black, Surface Mount, IP67, SPST," constant="no"/>
<attribute name="HEIGHT" value="5.2mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="CUI Inc." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="TS05-66-50-BK-260-SMT-67" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="179-TS056650260SMT67" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/CUI-Devices/TS05-66-50-BK-260-SMT-67?qs=A6eO%252BMLsxmTTpMlvA87NHQ%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="lph-7366">
<description>&lt;b&gt;LPH-7366: PCD8544-based Nokia 5110 monochrome LCD display&lt;/b&gt;
&lt;p&gt;&lt;b&gt;Doublecheck before using!&lt;/b&gt;&lt;/p&gt;</description>
<packages>
<package name="LPH-7366">
<wire x1="20" y1="19" x2="20" y2="-16" width="0.127" layer="21"/>
<wire x1="-20" y1="19" x2="-6" y2="19" width="0.127" layer="21"/>
<wire x1="-6" y1="19" x2="6" y2="19" width="0.127" layer="21"/>
<wire x1="6" y1="19" x2="20" y2="19" width="0.127" layer="21"/>
<wire x1="-20" y1="19" x2="-20" y2="-16" width="0.127" layer="21"/>
<wire x1="-20" y1="-16" x2="20" y2="-16" width="0.127" layer="21"/>
<wire x1="-6" y1="19" x2="-6" y2="14" width="0.127" layer="21"/>
<wire x1="-6" y1="14" x2="6" y2="14" width="0.127" layer="21"/>
<wire x1="6" y1="14" x2="6" y2="19" width="0.127" layer="21"/>
<wire x1="-19.9" y1="18.9" x2="-19.9" y2="15.1" width="0.3" layer="21"/>
<wire x1="-19.9" y1="-1.1" x2="-19.9" y2="-4.9" width="0.3" layer="21"/>
<wire x1="19.9" y1="-1" x2="19.9" y2="-4.8" width="0.3" layer="21"/>
<wire x1="19.9" y1="18.9" x2="19.9" y2="15.1" width="0.3" layer="21"/>
<wire x1="18" y1="-13" x2="18" y2="11" width="0.3" layer="21"/>
<wire x1="17" y1="12" x2="-17" y2="12" width="0.3" layer="21"/>
<wire x1="-18" y1="11" x2="-18" y2="-13" width="0.3" layer="21"/>
<wire x1="-18" y1="-13" x2="-17" y2="-14" width="0.3" layer="21" curve="90"/>
<wire x1="-17" y1="-14" x2="17" y2="-14" width="0.3" layer="21"/>
<wire x1="17" y1="-14" x2="18" y2="-13" width="0.3" layer="21" curve="90"/>
<wire x1="17" y1="12" x2="18" y2="11" width="0.3" layer="21" curve="-90"/>
<wire x1="-17" y1="12" x2="-18" y2="11" width="0.3" layer="21" curve="90"/>
<wire x1="-19.5" y1="-5.75" x2="-18.5" y2="-5.75" width="0.05" layer="51"/>
<wire x1="-18.5" y1="-5.75" x2="-18.5" y2="-8.25" width="0.05" layer="51"/>
<wire x1="-18.5" y1="-8.25" x2="-19.5" y2="-8.25" width="0.05" layer="51"/>
<wire x1="-19.5" y1="-8.25" x2="-19.5" y2="-5.75" width="0.05" layer="51"/>
<wire x1="-19.5" y1="7.25" x2="-18.5" y2="7.25" width="0.05" layer="51"/>
<wire x1="-18.5" y1="7.25" x2="-18.5" y2="4.75" width="0.05" layer="51"/>
<wire x1="-18.5" y1="4.75" x2="-19.5" y2="4.75" width="0.05" layer="51"/>
<wire x1="-19.5" y1="4.75" x2="-19.5" y2="7.25" width="0.05" layer="51"/>
<wire x1="-19.5" y1="2.25" x2="-18.5" y2="2.25" width="0.05" layer="51"/>
<wire x1="-18.5" y1="2.25" x2="-18.5" y2="-0.25" width="0.05" layer="51"/>
<wire x1="-18.5" y1="-0.25" x2="-19.5" y2="-0.25" width="0.05" layer="51"/>
<wire x1="-19.5" y1="-0.25" x2="-19.5" y2="2.25" width="0.05" layer="51"/>
<wire x1="18.5" y1="-5.75" x2="19.5" y2="-5.75" width="0.05" layer="51"/>
<wire x1="19.5" y1="-5.75" x2="19.5" y2="-8.25" width="0.05" layer="51"/>
<wire x1="19.5" y1="-8.25" x2="18.5" y2="-8.25" width="0.05" layer="51"/>
<wire x1="18.5" y1="-8.25" x2="18.5" y2="-5.75" width="0.05" layer="51"/>
<wire x1="18.5" y1="2.25" x2="19.5" y2="2.25" width="0.05" layer="51"/>
<wire x1="19.5" y1="2.25" x2="19.5" y2="-0.25" width="0.05" layer="51"/>
<wire x1="19.5" y1="-0.25" x2="18.5" y2="-0.25" width="0.05" layer="51"/>
<wire x1="18.5" y1="-0.25" x2="18.5" y2="2.25" width="0.05" layer="51"/>
<wire x1="18.5" y1="7.25" x2="19.5" y2="7.25" width="0.05" layer="51"/>
<wire x1="19.5" y1="7.25" x2="19.5" y2="4.75" width="0.05" layer="51"/>
<wire x1="19.5" y1="4.75" x2="18.5" y2="4.75" width="0.05" layer="51"/>
<wire x1="18.5" y1="4.75" x2="18.5" y2="7.25" width="0.05" layer="51"/>
<smd name="4" x="1" y="17" dx="4" dy="0.75" layer="1" rot="R90"/>
<smd name="3" x="2" y="17" dx="4" dy="0.75" layer="1" rot="R90"/>
<smd name="2" x="3" y="17" dx="4" dy="0.75" layer="1" rot="R90"/>
<smd name="1" x="4" y="17" dx="4" dy="0.75" layer="1" rot="R90"/>
<smd name="9" x="-4" y="17" dx="4" dy="0.75" layer="1" rot="R90"/>
<smd name="5" x="0" y="17" dx="4" dy="0.75" layer="1" rot="R90"/>
<smd name="6" x="-1" y="17" dx="4" dy="0.75" layer="1" rot="R90"/>
<smd name="7" x="-2" y="17" dx="4" dy="0.75" layer="1" rot="R90"/>
<smd name="8" x="-3" y="17" dx="4" dy="0.75" layer="1" rot="R90"/>
<text x="-20.32" y="19.05" size="1.27" layer="25">&gt;NAME</text>
<text x="-20.32" y="-17.78" size="1.27" layer="27">&gt;VALUE</text>
<hole x="-17" y="13" drill="1.5"/>
<hole x="17" y="-12.5" drill="1.5"/>
</package>
</packages>
<symbols>
<symbol name="LPH-7366">
<wire x1="-12.7" y1="20.32" x2="-12.7" y2="-20.32" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-20.32" x2="7.62" y2="-20.32" width="0.254" layer="94"/>
<wire x1="7.62" y1="-20.32" x2="7.62" y2="20.32" width="0.254" layer="94"/>
<wire x1="7.62" y1="20.32" x2="-12.7" y2="20.32" width="0.254" layer="94"/>
<wire x1="-2.54" y1="17.78" x2="-2.54" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-17.78" x2="5.08" y2="-17.78" width="0.254" layer="94"/>
<wire x1="5.08" y1="-17.78" x2="5.08" y2="17.78" width="0.254" layer="94"/>
<wire x1="5.08" y1="17.78" x2="-2.54" y2="17.78" width="0.254" layer="94"/>
<text x="2.54" y="-2.54" size="1.27" layer="94" rot="R90">LPH-7366</text>
<text x="-12.7" y="-22.86" size="1.778" layer="96">&gt;VALUE</text>
<text x="-12.7" y="22.86" size="1.778" layer="95" rot="MR180">&gt;NAME</text>
<pin name="VDD" x="-17.78" y="-5.08" length="middle" direction="pwr"/>
<pin name="SCLK" x="-17.78" y="15.24" length="middle" direction="in"/>
<pin name="SDIN" x="-17.78" y="17.78" length="middle" direction="in"/>
<pin name="D/C" x="-17.78" y="12.7" length="middle" direction="in"/>
<pin name="/SCE" x="-17.78" y="10.16" length="middle" direction="in" function="dot"/>
<pin name="OSC" x="-17.78" y="0" length="middle" direction="pas"/>
<pin name="GND" x="-17.78" y="-17.78" length="middle" direction="pwr"/>
<pin name="VOUT" x="-17.78" y="-10.16" length="middle" direction="pas"/>
<pin name="/RES" x="-17.78" y="5.08" length="middle" direction="in" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LPH-7366" prefix="LCD">
<gates>
<gate name="G$1" symbol="LPH-7366" x="-7.62" y="-2.54"/>
</gates>
<devices>
<device name="" package="LPH-7366">
<connects>
<connect gate="G$1" pin="/RES" pad="9"/>
<connect gate="G$1" pin="/SCE" pad="5"/>
<connect gate="G$1" pin="D/C" pad="4"/>
<connect gate="G$1" pin="GND" pad="7"/>
<connect gate="G$1" pin="OSC" pad="6"/>
<connect gate="G$1" pin="SCLK" pad="2"/>
<connect gate="G$1" pin="SDIN" pad="3"/>
<connect gate="G$1" pin="VDD" pad="1"/>
<connect gate="G$1" pin="VOUT" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="IC1" library="SamacSys_Parts" deviceset="VEML7700-TT" device=""/>
<part name="IC4" library="SamacSys_Parts" deviceset="ATTINY84-20PU" device=""/>
<part name="LCD1" library="lph-7366" deviceset="LPH-7366" device=""/>
<part name="B_L" library="SamacSys_Parts" deviceset="TS05-66-50-BK-260-SMT-67" device=""/>
<part name="B_D" library="SamacSys_Parts" deviceset="TS05-66-50-BK-260-SMT-67" device=""/>
<part name="B_R" library="SamacSys_Parts" deviceset="TS05-66-50-BK-260-SMT-67" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="IC1" gate="G$1" x="-20.32" y="-30.48" smashed="yes">
<attribute name="NAME" x="-1.27" y="-22.86" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="-1.27" y="-25.4" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="IC4" gate="G$1" x="-83.82" y="5.08" smashed="yes">
<attribute name="NAME" x="11.43" y="12.7" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="11.43" y="10.16" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="LCD1" gate="G$1" x="-58.42" y="-27.94" smashed="yes" rot="R90">
<attribute name="VALUE" x="-35.56" y="-40.64" size="1.778" layer="96" rot="R90"/>
<attribute name="NAME" x="-81.28" y="-40.64" size="1.778" layer="95" rot="MR90"/>
</instance>
<instance part="B_L" gate="G$1" x="68.58" y="-35.56" smashed="yes" rot="MR0">
<attribute name="NAME" x="47.752" y="-31.242" size="1.778" layer="95" rot="MR0" align="center-left"/>
<attribute name="VALUE" x="67.31" y="-27.94" size="1.778" layer="96" rot="MR0" align="center-left"/>
</instance>
<instance part="B_D" gate="G$1" x="88.9" y="-50.8" smashed="yes" rot="MR0">
<attribute name="NAME" x="82.042" y="-46.736" size="1.778" layer="95" rot="MR0" align="center-left"/>
<attribute name="VALUE" x="88.392" y="-57.658" size="1.778" layer="96" rot="MR0" align="center-left"/>
</instance>
<instance part="B_R" gate="G$1" x="109.22" y="-35.56" smashed="yes" rot="MR0">
<attribute name="NAME" x="88.138" y="-31.242" size="1.778" layer="95" rot="MR0" align="center-left"/>
<attribute name="VALUE" x="113.03" y="-27.94" size="1.778" layer="96" rot="MR0" align="center-left"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="3V3" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="VDD"/>
<wire x1="-25.4" y1="-33.02" x2="-20.32" y2="-33.02" width="0.1524" layer="91"/>
<label x="-25.4" y="-33.02" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="VCC"/>
<wire x1="-83.82" y1="5.08" x2="-88.7476" y2="5.08" width="0.1524" layer="91"/>
<label x="-88.9" y="5.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="LCD1" gate="G$1" pin="VDD"/>
<wire x1="-53.34" y1="-45.72" x2="-53.34" y2="-50.8" width="0.1524" layer="91"/>
<label x="-53.34" y="-50.8" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="SCL" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="SCL"/>
<wire x1="-20.32" y1="-30.48" x2="-25.4" y2="-30.48" width="0.1524" layer="91"/>
<label x="-25.4" y="-30.48" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="PA4_(ADC4/USCK/SCL/T1/PCINT4)"/>
<wire x1="20.32" y1="-7.62" x2="15.24" y2="-7.62" width="0.1524" layer="91"/>
<label x="20.32" y="-7.62" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="LCD1" gate="G$1" pin="SCLK"/>
<wire x1="-73.66" y1="-45.72" x2="-73.66" y2="-50.8" width="0.1524" layer="91"/>
<label x="-73.66" y="-50.8" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="SDA" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="(PCINT6/OC1A/SDA/MOSI/DI/ADC6)_PA6"/>
<wire x1="-88.9" y1="-10.16" x2="-83.82" y2="-10.16" width="0.1524" layer="91"/>
<label x="-88.9" y="-10.16" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="SDA"/>
<wire x1="-20.32" y1="-38.1" x2="-25.4" y2="-38.1" width="0.1524" layer="91"/>
<label x="-25.4" y="-38.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="LCD1" gate="G$1" pin="SDIN"/>
<wire x1="-76.2" y1="-45.72" x2="-76.2" y2="-50.8" width="0.1524" layer="91"/>
<label x="-76.2" y="-50.8" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="GND"/>
<wire x1="-25.4" y1="-35.56" x2="-20.32" y2="-35.56" width="0.1524" layer="91"/>
<label x="-25.4" y="-35.56" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="GND"/>
<wire x1="15.24" y1="5.08" x2="20.32" y2="5.08" width="0.1524" layer="91"/>
<label x="20.32" y="5.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="LCD1" gate="G$1" pin="GND"/>
<wire x1="-40.64" y1="-45.72" x2="-40.64" y2="-50.8" width="0.1524" layer="91"/>
<label x="-40.64" y="-50.8" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<label x="30.48" y="-38.1" size="1.778" layer="95"/>
<pinref part="B_L" gate="G$1" pin="COM_2"/>
<wire x1="30.48" y1="-38.1" x2="38.1" y2="-38.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="B_R" gate="G$1" pin="COM_1"/>
<wire x1="109.22" y1="-38.1" x2="116.84" y2="-38.1" width="0.1524" layer="91"/>
<label x="111.76" y="-38.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="B_D" gate="G$1" pin="COM_2"/>
<wire x1="53.34" y1="-53.34" x2="58.42" y2="-53.34" width="0.1524" layer="91"/>
<label x="45.72" y="-53.34" size="1.778" layer="95"/>
<pinref part="B_D" gate="G$1" pin="COM_1"/>
<wire x1="58.42" y1="-53.34" x2="88.9" y2="-53.34" width="0.1524" layer="91"/>
<junction x="58.42" y="-53.34"/>
</segment>
</net>
<net name="D/C" class="0">
<segment>
<pinref part="LCD1" gate="G$1" pin="D/C"/>
<wire x1="-71.12" y1="-45.72" x2="-71.12" y2="-50.8" width="0.1524" layer="91"/>
<label x="-71.12" y="-50.8" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="PA1_(ADC1/AIN0/PCINT1)"/>
<wire x1="15.24" y1="0" x2="20.32" y2="0" width="0.1524" layer="91"/>
<label x="20.32" y="0" size="1.778" layer="95"/>
</segment>
</net>
<net name="!CS" class="0">
<segment>
<pinref part="LCD1" gate="G$1" pin="/SCE"/>
<wire x1="-68.58" y1="-45.72" x2="-68.58" y2="-50.8" width="0.1524" layer="91"/>
<label x="-68.58" y="-50.8" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="PA0_(ADC0/AREF/PCINT0)"/>
<wire x1="15.24" y1="2.54" x2="20.32" y2="2.54" width="0.1524" layer="91"/>
<label x="20.32" y="2.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="BTN_L" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="PA2_(ADC2/AIN1/PCINT2)"/>
<wire x1="15.24" y1="-2.54" x2="20.32" y2="-2.54" width="0.1524" layer="91"/>
<label x="20.32" y="-2.54" size="1.778" layer="95"/>
</segment>
<segment>
<label x="30.48" y="-35.56" size="1.778" layer="95"/>
<pinref part="B_L" gate="G$1" pin="NO_2"/>
<wire x1="30.48" y1="-35.56" x2="38.1" y2="-35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="BTN_D" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="PA5_(ADC5/DO/MISO/OC1B/PCINT5)"/>
<wire x1="15.24" y1="-10.16" x2="20.32" y2="-10.16" width="0.1524" layer="91"/>
<label x="20.32" y="-10.16" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="B_D" gate="G$1" pin="NO_2"/>
<wire x1="58.42" y1="-50.8" x2="53.34" y2="-50.8" width="0.1524" layer="91"/>
<label x="45.72" y="-50.8" size="1.778" layer="95"/>
</segment>
</net>
<net name="BTN_R" class="0">
<segment>
<wire x1="-88.9" y1="-7.62" x2="-83.82" y2="-7.62" width="0.1524" layer="91"/>
<label x="-88.9" y="-7.62" size="1.778" layer="95"/>
<pinref part="IC4" gate="G$1" pin="(PCINT7/ICP/OC0B/ADC7)_PA7"/>
</segment>
<segment>
<pinref part="B_R" gate="G$1" pin="NO_1"/>
<wire x1="109.22" y1="-35.56" x2="116.84" y2="-35.56" width="0.1524" layer="91"/>
<label x="111.76" y="-35.56" size="1.778" layer="95"/>
</segment>
</net>
<net name="RST" class="0">
<segment>
<pinref part="IC4" gate="G$1" pin="(PCINT11/!RESET!/DW)_PB3"/>
<wire x1="-83.82" y1="-2.54" x2="-88.9" y2="-2.54" width="0.1524" layer="91"/>
<label x="-88.9" y="-2.54" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="LCD1" gate="G$1" pin="/RES"/>
<wire x1="-63.5" y1="-45.72" x2="-63.5" y2="-50.8" width="0.1524" layer="91"/>
<label x="-63.5" y="-50.8" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
