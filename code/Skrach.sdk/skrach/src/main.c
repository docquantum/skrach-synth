

#include <stdio.h>
#include "utils.h"
#include "midi.h"


int main()
{
	setup();

	xil_printf("Setup complete, welcome!\n\r");

    while(1)
    {
    	read_midi_msg();
    }

    teardown();
    return 0;
}
