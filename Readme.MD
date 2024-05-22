![alt text](https://github.com/Irdroid/usb-7-segment-display/blob/main/hardware/pictures/usb-7-segment-display-hi-res-small-web.jpg?raw=true)

# USB 7 Segment Display Module by Irdroid
----------------------------

- Display 4 digits and characters
- Support for float numbers
- Heartbeat/Progress activity
- Enumerates as USB Serial port on the host system
- Baud Rate 9600/8/n/1 (no parity)
- Panel Mount enclosure
- Cutout size 38x21mm

Examples in BASH, C and Python

## BASH Examples
Implemented in bash, these examples can be runned from the console, display serial port is initialized via stty, to this application is needed,
in order to configure the display serial port.
- [General Demo (General Device Capabilities)](https://github.com/Irdroid/usb-7-segment-display/blob/main/examples/bash/display_demo.sh)
- [CPU Activity Display](https://github.com/Irdroid/usb-7-segment-display/blob/main/examples/bash/cpu_usage.sh)

## C Example
The C example has a display.c/display.h for high level display initialization and access.
- [Display Demo C Example](https://github.com/Irdroid/usb-7-segment-display/tree/main/examples/c_example)

## Python Example
The Python example uses the pyserial library to operate the display, once connected and enumerated on the Host System,
data can be sent to the display, using the pyserial.
- [General Display Demo](https://github.com/Irdroid/usb-7-segment-display/blob/main/examples/python/display.py)

## Raspberry Pi Example
For Raspberry Pi the C example and the Bash examples can be used.
- [Display Demo](https://github.com/Irdroid/usb-7-segment-display/tree/main/examples/c_example)

## Applications
- Suitable for industrial applications
- Display process variables
- Display Activity
- Display Errors/Halts

## Real Projects that use the USB 7 Segment Display / Videos
[![USB 7 Segment Display Demo Video](https://github.com/Irdroid/usb-7-segment-display/blob/main/hardware/pictures/Screenshot%202024-05-21%20134546.png)](https://www.youtube.com/watch?v=8lMHGKwq2tQ)

[![USB 7 Segment Display Demo](https://github.com/Irdroid/usb-7-segment-display/blob/main/hardware/pictures/Screenshot%20from%202024-05-22%2015-55-31.png)](https://www.youtube.com/watch?v=nBUX0zgFX18)
