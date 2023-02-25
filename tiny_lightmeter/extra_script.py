Import("env")

# please keep $SOURCE variable, it will be replaced with a path to firmware

# In-line command with arguments
env.Replace(
    UPLOADCMD="scp $SOURCE pi@192.168.0.8:~/ & ssh pi@192.168.0.8 '~/upload_tiny'"
)

