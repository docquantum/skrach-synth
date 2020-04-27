#include <stdio.h>
#include "utils.h"
#include "midi.h"
#include "synth.h"

void process_midi(MidiMsg msg);

int main()
{
	setup();

	xil_printf("Setup complete, welcome!\n\r");

    while(1)
    {
//    	process_midi(read_midi_msg());
    	if(read_ready() == 0x1)
    		xil_printf("x%x\t", read_audio());


    }

    teardown();
    return 0;
}

void process_midi(MidiMsg msg)
{
	switch(msg.status)
	{
		case NOTE_ON:
			//queue another operator
			break;
		case NOTE_OFF:
			//find same note in queue and remove
			break;
		case CONTROL_CHANGE:
			//call function with midi data and adjust regs accordingly
			break;
		default:
			//reset fifos
			break;
	}
//	if(msg.status == NOTE_ON)
//	    	{
//	    		noteOnCount++;
//	//
//	    	}
//	    	else if(msg.status == NOTE_OFF)
//	    	{
//	    		noteOnCount--;
//	    	}
//
//	    	if(noteOnCount > 0)
//	    		sel_waveform(1);
//			else if(noteOnCount == 0)
//				sel_waveform(0);
//			else if(noteOnCount < 0)
//				noteOnCount = 0;
}
