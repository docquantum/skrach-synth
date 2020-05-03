/**
 * Daria Solovey
 * May 1st 2020
 *
 * Skrach OS
 *
 * Ties together MIDI and Synth libraries to allow
 * for MIDI control of the Skrach IP Core. There is no
 * control over USB UART implemented in this version, only
 * read out over console.
 *
 * Debug parameters can be changed by adding debug functions
 * from the libraries as well as uncommenting certain lines
 * below.
 */

#include <stdio.h>
#include "utils.h"
#include "midi.h"
#include "synth.h"

void process_midi(MidiMsg msg);

int main()
{
	setup();

	xil_printf("--------------------------------------------\n\r\n\r");
	xil_printf("Setup complete, welcome!\n\r\n\r");
	xil_printf("--------------------------------------------\n\r");

    while(1)
    {
    	process_midi(read_midi_msg());
    }

    teardown();
    return 0;
}

void process_midi(MidiMsg msg)
{
	switch(msg.status)
	{
		case NOTE_ON:
			start_operator(msg);
//			xil_printf("Note started on op %d\n\r", (start_operator(msg)).op);
			break;
		case NOTE_OFF:
			while(stop_operator(msg));
//			xil_printf("Note stopped\n\r");
			break;
		case CONTROL_CHANGE:
			adjust_control(msg);
			break;
		default:
			reset_midi_uart();
			break;
	}
//	print_status();
}
