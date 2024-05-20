#include <stdio.h>
#include <stdint.h>
#include <unistd.h>
#include "display.h"

// The Display File Descriptor
int display;
// The Display dev entry
char * dev = "/dev/ttyUSB0";

// Convert Integer to string, needed for the display
char *my_itoa(int num, char *str)
{
        if(str == NULL)
        {
                return NULL;
        }
        sprintf(str, "%d", num);
        return str;
}

int main(void)
{
    uint8_t buff[5];
    // This is the reset character that controls Display reset
    buff[0] = '#';
    uint8_t * buff_ptr = buff;
    buff_ptr++;
    // The value that we want to show onto the Display
    int value = 1111;
    // Convert the value to string into the display buffer
    my_itoa(value, buff_ptr);
    // Open the Display, make sure you enter the proper
    // Serial port dev entry above
    open_display(dev);
    // Write to buffer to the Display
    write(display, buff, sizeof(buff));

    return 0;
}