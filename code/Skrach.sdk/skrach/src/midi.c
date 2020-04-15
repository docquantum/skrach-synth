#include "utils.h"
#include "midi.h"

MidiMsg read_midi_msg(void)
{
	MidiMsg msg;
	msg.status = XUartLite_RecvByte(midiReg);
	msg.pitch = XUartLite_RecvByte(midiReg);
	msg.velocity = XUartLite_RecvByte(midiReg);
	xil_printf("_______________\n\r");
	xil_printf("> status  : 0x%x\n\r", msg.status);
	xil_printf("> S_type  : %s\n\r", status_type_to_string(msg.status));
	xil_printf("> pitch   : 0x%x\n\r", msg.pitch);
	xil_printf("> key     : %s%d\n\r", pitch_to_string(msg.pitch), ((msg.pitch+3)/12)-1);
	xil_printf("> velocity: %d\n\r", msg.velocity);
	return msg;
}

char * status_type_to_string(StatusType status){
	switch(status)
	{
		case NOTE_OFF: return "Note Off";
		case NOTE_ON: return "Note On";
		case CONTROL_CHANGE: return "Control Change";
		case PROGRAM_CHANGE: return "Program Change";
		case PITCH_BEND: return "Pitch Bend";
		case POLY_PRESSURE: return "Poly Aftertouch";
		case AFTERTOUCH: return "Aftertouch";
		case SYSTEM_EXCLUSIVE: return "Sysex";
		case TIME_CODE: return "Time Code";
		case SONG_POS_POINTER: return "Song Pos";
		case SONG_SELECT: return "Song Select";
		case TUNE_REQUEST: return "Tune Request";
		case EOX: return "Sysex End";
		case TIME_CLOCK: return "Time Clock";
		case START: return "Start";
		case CONTINUE: return "Continue";
		case STOP: return "Stop";
		case ACTIVE_SENSING: return "Active Sensing";
		case SYSTEM_RESET: return "System Reset";
		default: return "Unknown";
	}
}

char * pitch_to_string(int pitch){
	switch(pitch % 12)
	{
		case 0: return "C";
		case 1: return "C#";
		case 2: return "D";
		case 3: return "D#";
		case 4: return "E";
		case 5: return "F";
		case 6: return "F#";
		case 7: return "G";
		case 8: return "G#";
		case 9: return "A";
		case 10: return "A#";
		case 11: return "B";
		default: return "U";
	}
}
