import time
import serial

# configure the serial connection to the display (the parameters differs on the device you are connecting to)
disp = serial.Serial(
    port='/dev/ttyUSB0',
    baudrate=9600
)
# This is what we will show on the Display # is control char
my_str = "#1234"
# Convert the string to bytes
my_str_as_bytes = str.encode(my_str)
# Open the display
disp.isOpen()
# Write to the display
disp.write(my_str_as_bytes)