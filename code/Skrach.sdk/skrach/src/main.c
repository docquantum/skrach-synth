#include <stdio.h>
#include "utils.h"
#include "midi.h"
#include "synth.h"
#include "xintc.h"


int main()
{
	setup();

	xil_printf("Setup complete, welcome!\n\r");

    while(1)
    {
    	MidiMsg msg = read_midi_msg();
    	if(msg.status == NOTE_ON)
    	{
    		//freq_to_phase(pitch_to_freq(msg.pitch));
    	}
    }

    teardown();
    return 0;
}
