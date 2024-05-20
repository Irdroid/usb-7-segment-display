#include <stdio.h>
#include <stdint.h>
#include <unistd.h>
#include "display.h"

// The Display File Descriptor
int display;
// The Display dev entry
char * dev = "/dev/ttyUSB0";

int main(void)
{
    uint8_t buff[5];
    // This is the reset character that controls Display reset
    buff[0] = '#';
    uint8_t * buff_ptr = buff;
    buff_ptr++;
    // Open the Display, make sure you enter the proper
    // Serial port dev entry above
    open_display(dev);
    sprintf(buff_ptr, "%s", "strt");
    // Write to buffer to the Display
    write(display, buff, sizeof(buff));

    return 0;
}