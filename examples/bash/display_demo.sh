#!/bin/bash

##############################################
#   Irdroid USB 7 Segment Display Module     #
#   DEMO Program in BASH                     #
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

stty -F /dev/ttyUSB0 9600 cs8 -cstopb -parenb
# The Serial port device entry
SERIAL_PORT=/dev/ttyUSB0
# Print strig - start / STR
echo -n "#STR" > /dev/ttyUSB0
echo "USB 7 Segment Display Module demo in bash"
echo "-----------------------------------------"

while [ TRUE ]
do
  # Animate 1234
  echo "Display test Animate..."
  # Show digit 1 at position 0
  echo -n "#1" > $SERIAL_PORT
  sleep 0.5
  # Show digits 12
  echo -n "#12" > $SERIAL_PORT
  sleep 0.5
  # Show digits 123
  echo -n "#123" > $SERIAL_PORT
  sleep 0.5
  # Show digits 1234
  echo -n "#1234" > $SERIAL_PORT 
  sleep 0.5 
  # Reset the Display
  echo -n "#    " > $SERIAL_PORT
  sleep 0.5
  echo "Double number display..."
  echo -n "#22*27" > $SERIAL_PORT 
  sleep 2
  echo "Counting [to 1000] Demo..."
  COUNTER=1
   while [ $COUNTER != 1001  ]
    do
     echo -n "#$COUNTER" > $SERIAL_PORT
     #sleep 0.150
     COUNTER=$[$COUNTER +1]
    done
  sleep 2
  echo -n "#     " > $SERIAL_PORT    
  echo "Animate Dots / Heartbeat [ Activity Display ]..."
  COUNTER=1
  while [ $COUNTER != 10 ]
    do
        echo -n "# * " > $SERIAL_PORT
        sleep 0.8
        echo -n "#  *" > $SERIAL_PORT
        sleep 0.8
 
     COUNTER=$[$COUNTER +1]
    done
  echo "Loop Starts over again!"
  sleep 2
done
