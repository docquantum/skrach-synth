/**
 * Func. Gen. OS
 * An operating system for an FPGA function generator
 *
 * Daria Solovey
 * Updated: 2020.04.03
 * License: GLPv3
 *
 */

#include "xparameters.h"
#include "stdio.h"
#include "stdlib.h"
#include "xstatus.h"

#include "xil_printf.h"						// Contains xil_printf
#include <xuartlite_l.h>					// Contains XUartLite_RecvByte
#include <xil_io.h>							// Contains Xil_Out8 and its variations
#include <stdbool.h>

typedef struct {
	unsigned int ch;
	unsigned int op;
	unsigned int vel;
} MidiMsg;

#define	uartReg				0x40600000
#define	midiReg				0x40610000
#define	softSelBit			0x44a00000 // out 1 bit selects external control
#define phaseReg			0x44a00004 // in/out 10.6
#define amplReg				0x44a00008 // in/out 10.6
#define sigSelBit			0x44a0000c // out 1 bit selects which signal to play

int read_number_from_uart(char * msg);
void setup_terminal(void);
void print_about(void);
void print_menu(void);
void reset_terminal(void);
void handle_input(void);
void print_system_state(void);
void toggle_old_func(void);
void toggle_waveform(void);
void freq_to_phase(int freq);
int phase_to_freq(void);
void percent_to_ampl(int percent);
int ampl_to_percent(void);
MidiMsg read_midi_msg(void);

//State Flags
bool fancyTerm = false;
bool running = true;
bool hardControl = false;
bool waveform2 = false;

int main(void){
	Xil_Out8(softSelBit, 0x1);
	percent_to_ampl(90);
	freq_to_phase(440);

	while(XUartLite_IsReceiveEmpty(uartReg))
		xil_printf("Waiting for input...\n\r");

	XUartLite_RecvByte(uartReg);

	setup_terminal();

	while(running){
		handle_input();
	}

	return 0;
}

int read_number_from_uart(char * msg){
	int size = 6;
	int i = 0;
	char input[size];
	if(msg != NULL && strlen(msg) > 0)
		xil_printf("Please type in an unsigned integer no greater than 5 digits\n\rrepresenting %s, then hit enter\n\r> ", msg);
	else
		xil_printf("Please type in an unsigned integer no greater than 5 digits, then hit enter\n\r> ");

	for(i = 0; i < size; i++) {
		input[i] = XUartLite_RecvByte(uartReg);
		XUartLite_SendByte(uartReg, input[i]);
		if(input[i] == '\r'){
			i++;
			break;
		}
	}
	xil_printf("\n\r");
	input[i-1] = '\0';
	return atoi(input);
}

void reset_terminal(void){
	if(fancyTerm) {
		xil_printf("\e[0;92m\e[2J\e[f");
	} else {
		for(int i = 0; i < 100; i++) xil_printf("\n\r");
	}
}

void setup_terminal(void){
	xil_printf("\n\r\n\rWelcome to Quantum Fidelity (TM) FuncGen OS Term-Link.\n\r");
	xil_printf("Would you like to enable advanced VT-200 terminal features? ([y]/n): ");
	do {
		char ans = XUartLite_RecvByte(uartReg);
		if(ans == 'y' || ans == 'Y' || ans == '\n' || ans == '\r'){
			XUartLite_SendByte(uartReg, ans);
			XUartLite_SendByte(uartReg, '\n');
			fancyTerm = true;
			xil_printf("\e[0;92m");
			break;
		} else if(ans == 'n' || ans == 'N') {
			XUartLite_SendByte(uartReg, ans);
			XUartLite_SendByte(uartReg, '\n');
			break;
		}
	} while(true);

	print_about();
}

void print_about(void){
	reset_terminal();
	xil_printf("Function Generator OS\n\r\n\r");
	if(fancyTerm){
		xil_printf("\e[4;97;101m/!\\ THIS IS ALPHA SOFTWARE, PROCEED WITH CAUTION!!! /!\\\e[0;92m\n\r");
	} else {
		xil_printf("/!\\ THIS IS ALPHA SOFTWARE, PROCEED WITH CAUTION!!! /!\\\n\r");
	}
	xil_printf("\n\r Use '?' or '/' to print the help menu\n\r");
	xil_printf("--------------------------------------------------------------------------------\n\r");
}

void print_menu(void){
	reset_terminal();
	xil_printf("> ? : Prints this help menu\n\r");
	xil_printf("> r : Reset terminal\n\r");
	xil_printf("> p : Print system state\n\r");
	xil_printf("> s : Toggle output signal");
	xil_printf("> a : Set new amplitude\n\r");
	xil_printf("> f : Set new frequency\n\r");
	xil_printf("> z : Toggle hardware control\n\r");
	xil_printf("> m : Read midi\n\r");
}

void handle_input(void){
	char command = XUartLite_RecvByte(uartReg);
	switch(command){
		case '?':
		case '/':
			print_menu();
			break;
		case 'r':
		case 'R':
			reset_terminal();
			break;
		case 'p':
		case 'P':
			print_system_state();
			break;
		case 's':
		case 'S':
			toggle_waveform();
			xil_printf("\n\rWaveform 2 is %s\n\r", waveform2 ? "on" : "off");
			break;
		case 'a':
		case 'A':
			percent_to_ampl(read_number_from_uart("amplitude in percent"));
			xil_printf("\n\rAmplitude updated to %u%%\n\r", ampl_to_percent());
			break;
		case 'f':
		case 'F':
			freq_to_phase(read_number_from_uart("frequency in hz"));
			xil_printf("\n\rFrequency updated to %uhz\n\r", phase_to_freq());
			break;
		case 'z':
		case 'Z':
			toggle_old_func();
			xil_printf("\n\rHardware functionality %s\n\r", hardControl ? "on" : "off");
			break;
		case 'm':
		case 'M':
			read_midi_msg();
			break;
		default:
			xil_printf("Unknown command '%c', please use '?' to print help menu\n\r", command);
			break;
	}
}

void toggle_old_func(void){
	if(hardControl){
		Xil_Out8(softSelBit, 0x1);
		hardControl = false;
	} else {
		Xil_Out8(softSelBit, 0x0);
		hardControl = true;
	}
}

void toggle_waveform(void){
	if(waveform2){
		Xil_Out8(sigSelBit, 0x0);
		waveform2 = false;
	} else {
		Xil_Out8(sigSelBit, 0x1);
		waveform2 = true;
	}
	freq_to_phase(440);
}

void freq_to_phase(int freq){
	if(waveform2)
		Xil_Out16(phaseReg, (int)((freq-7)*0.135781));
	else
		Xil_Out16(phaseReg, (int)((freq-7) << 16)/48000.0);
}

int phase_to_freq(void){
	if(waveform2)
		return 1 + ((int)(471.347311 * (Xil_In16(phaseReg) << 6)) >> 6);
	else
		return 1 + ((48000 * Xil_In16(phaseReg) + (7 << 16)) >> 16);
}

void percent_to_ampl(int percent){
	Xil_Out16(amplReg,  ((101 - percent) * 5));
}

int ampl_to_percent(void){
	return 101 - (Xil_In16(amplReg) / 5);
}

void print_system_state(void){
	char string[18];
	char string2[18];

	xil_printf("> softSelBit : %u\n\r", Xil_In8(softSelBit));
	xil_printf("> sigSelBit : %u\n\r", Xil_In8(sigSelBit));

	itoa(Xil_In16(phaseReg), string, 2);
	strcpy(string2, "0000000000000000\0");
	strcpy(&string2[(16-strlen(string))], string);

	xil_printf("> phaseReg : %-.10s.%s\n\r", string2, &string2[9]);

	itoa(Xil_In16(amplReg), string, 2);
	strcpy(string2, "0000000000000000\0");
	strcpy(&string2[(16-strlen(string))], string);

	xil_printf("> amplReg  : %-.10s.%s\n\r", string2, &string2[9]);

	xil_printf("--------------------------------------------\n\r");
	xil_printf("> hardControl : %s\n\r", hardControl ? "true" : "false");
	xil_printf("> waveform2 : %s\n\r", waveform2 ? "true" : "false");
	xil_printf("> Freq : %u\n\r", phase_to_freq());
	xil_printf("> Ampl : %u%%\n\r", ampl_to_percent());
	return;
}

MidiMsg read_midi_msg(void){
	MidiMsg msg;
	msg.ch = XUartLite_RecvByte(midiReg);
	msg.op = XUartLite_RecvByte(midiReg);
	msg.vel = XUartLite_RecvByte(midiReg);
	xil_printf("> ch : %x\n\r", msg.ch);
	xil_printf("> op : %x\n\r", msg.op);
	xil_printf("> vel: %x\n\r", msg.vel);
	return msg;
}
