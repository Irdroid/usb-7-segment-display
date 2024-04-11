#!/bin/bash

##############################################
#   Irdroid USB 7 Segment Display Module     #
#   CPU Usage DEMO Program in BASH           #
##############################################                                       
#   Author:   Georgi Bakalski                # 
#   Company:  Hardware Group Ltd             # 
#   License:  Apache 2.0                     # 
##############################################
# Display Control                            #
# 1.Reset Display echo -n "#     " > SERIAL  #
# 2.Display number echo -n "#1234" > SERIAL  # 
# 3.Display double echo -n "#22*22"> SERIAL  #
# 4.Lite up a dot  echo -n "#    *"> SERIAL  #
##############################################

# Initialize the serial port - stty see below
# Identify the display entry in /dev and configure
# serial port variable below
# Initialize the Display
stty -F /dev/ttyUSB0 9600 cs8 -cstopb -parenb

# The Serial port device entry
SERIAL_PORT=/dev/ttyUSB0
# Print strig - start / STR
echo -n "#STR" > $SERIAL_PORT
sleep 1
echo "USB 7 Segment Display Module cpu usage in bash"
echo "----------------------------------------------"
while [ true ]
do
# Read the current CPU Usage
VAR=$(top -bn1 | sed -n '/Cpu/p' | awk '{print "#"$2 }' | tr ',' '*')
# Send it to the Display
echo  -n $VAR > $SERIAL_PORT
echo "Sending Measurements to the Display..."
# Wait a bit
sleep 1
done