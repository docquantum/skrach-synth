#include <stdio.h>
#include "utils.h"
#include "midi.h"
#include "synth.h"

int main()
{
	setup();

	xil_printf("Setup complete, welcome!\n\r");
	xil_printf("> Freq : %u\n\r", phase_to_freq());

    while(1)
    {
    	MidiMsg msg = read_midi_msg();
    	if(msg.status == NOTE_ON)
    	{
    		freq_to_phase(pitch_to_freq(msg.pitch));
    	}
    }

    teardown();
    return 0;
}
