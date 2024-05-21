![alt text](https://github.com/Irdroid/usb-7-segment-display/blob/main/hardware/pictures/usb-7-segment-display-hi-res-small-web.jpg?raw=true)

# USB 7 Segment Display Module
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
[![USB 7 Segment Display Demo Video](https://img.youtube.com/vi/YOUTUBE_VIDEO_ID_HERE/0.jpg)](https://www.youtube.com/watch?v=YOUTUBE_VIDEO_ID_HERE)

<div class="video-wrapper">
<iframe width="560" height="315" src="https://www.youtube.com/embed/8lMHGKwq2tQ?si=ylGKIyv4z86MVq9O" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
</div>
