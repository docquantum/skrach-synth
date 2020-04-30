#include <stdio.h>
#include "utils.h"
#include "midi.h"
#include "synth.h"
#include "sleep.h"

void process_midi(MidiMsg msg);

int main()
{
	setup();

	xil_printf("Setup complete, welcome!\n\r");

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
			xil_printf("Note started on op %d\n\r", (start_operator(msg)).op);
			break;
		case NOTE_OFF:
			while(stop_operator(msg));
			xil_printf("Note stopped\n\r");
			break;
		case CONTROL_CHANGE:
			adjust_control(msg);
			break;
		default:
			reset_midi_uart();
			break;
	}
	print_status();
}
