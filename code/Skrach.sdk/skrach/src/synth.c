#include <xil_io.h>
#include "xparameters.h"
#include "synth.h"
#include <math.h>

#define SYNTH_BASE 			XPAR_SKRACH_CORE_0_S_AXI_BASEADDR
#define	AMPL_REG			SYNTH_BASE // amplitude(8) Signed
#define ATTACK_REG			SYNTH_BASE+0x4 // Att(8) Signed
#define DECAY_REG			SYNTH_BASE+0x5 // Dec(8) Signed
#define SUSTAIN_REG			SYNTH_BASE+0x6 // Sus(8) Signed
#define RELEASE_REG			SYNTH_BASE+0x7 // Rel(8) Signed
#define OP_ENABLE_REG		SYNTH_BASE+0x8 // OpEnable(11<-0) OneHot
#define OP_PHASE_BASE		SYNTH_BASE+0xc // OpPhase(16) Q9.7
#define SLV_REG9			SYNTH_BASE+0x24

int find_next_available_op(void);
int find_running_op(MidiMsg msg);

static int numOfRunningOps = 0;
static int lastUsedOp = 0;
static Operator opArray[12];

void setup_synth(void)
{
	// Defaults
	reset_ops();
	set_ampl(100);
	set_adsr(ATTACK, 10);
	set_adsr(DECAY, 30);
	set_adsr(SUSTAIN, 90);
	set_adsr(RELEASE, 30);
}

void freq_to_phase(float freq, int op)
{
	xil_printf("phase: %u\n\r", (int)roundf(((freq*(2<<18))/48000)));
	Xil_Out16(OP_PHASE_BASE+(op*2), (int)roundf(((freq*(2<<18))/48000)));
}

int phase_to_freq(int op)
{
	return 1 + ((48000 * Xil_In16(OP_PHASE_BASE+(op*2))) >> 18);
}

void op_enable_write(int bit, int op)
{
	if(bit)
		Xil_Out16(OP_ENABLE_REG, Xil_In16(OP_ENABLE_REG) | (1 << op));
	else
		Xil_Out16(OP_ENABLE_REG, Xil_In16(OP_ENABLE_REG) & ~(1 << op));
}

void set_ampl(int val)
{
	Xil_Out8(AMPL_REG, val);
}

void set_adsr(ADSR type, int val)
{
	switch(type)
	{
		case ATTACK:
			Xil_Out8(ATTACK_REG, val);
			break;
		case DECAY:
			Xil_Out8(DECAY_REG, val);
			break;
		case SUSTAIN:
			Xil_Out8(SUSTAIN_REG, val);
			break;
		case RELEASE:
			Xil_Out8(RELEASE_REG, val);
			break;
		default:
			xil_printf("/!\\ Error! ADSR (%u) not recognized! /!\\\n\r", type);
			break;
	}
}

int find_next_available_op(void)
{
	for(int i=lastUsedOp+1, j=0; j < 12; i++, j++)
	{
		if(i == 12)
			i = 0;
		if(opArray[i].op == -1)
			return i;
	}
	return -1;
}

int find_running_op(MidiMsg msg)
{
	int op = -1;
	for(int i=lastUsedOp, j=0; j < 12; i++, j++)
	{
		if(i == 12)
			i = 0;
		if(opArray[i].msg.pitch == msg.pitch && opArray[i].op != -1)
			return i;
	}
	return op;
}

Operator start_operator(MidiMsg msg)
{
	Operator newOp;
	newOp.msg = msg;
	newOp.op = -1;

	if(msg.status != NOTE_ON)
	{
		xil_printf("/!\\ Error! Incorrect status for start_operator! (%u) not recognized! /!\\\n\r", msg.status);
		return newOp;
	}
	else if(numOfRunningOps >= 12)
	{
		xil_printf("/~\\ Warning. No more operators available! start_operator command ignored /~\\\n\r");
		return newOp;
	}

	newOp.op = find_next_available_op();

	if(newOp.op == -1)
	{
		xil_printf("/!\\ Error! find_next_available_op command failed! /!\\\n\r");
		return newOp;
	}

	freq_to_phase(pitch_to_freq(msg.pitch), newOp.op);
	op_enable_write(1, newOp.op);
	opArray[newOp.op] = newOp;
	lastUsedOp = newOp.op;
	numOfRunningOps++;

	return newOp;
}


int stop_operator(MidiMsg msg)
{
	if(msg.status != NOTE_OFF)
	{
		xil_printf("/!\\ Error! Incorrect status for stop_operator! (%u) not recognized! /!\\\n\r", msg.status);
		return 0;
	}
	else if(numOfRunningOps == 0)
	{
		//xil_printf("/~\\ Warning. No operators currently running! stop_operator command ignored /~\\\n\r");
		return 0;
	}

	int opIndex = find_running_op(msg);
	if (opIndex == -1)
	{
		xil_printf("/~\\ Warning. find_running_op command didn't find a matching op! /~\\\n\r");
		return 0;
	}

	op_enable_write(0, opArray[opIndex].op);
	opArray[opIndex].op = -1;
	numOfRunningOps--;
	return 1;
}

void reset_ops(void)
{
	Xil_Out16(OP_ENABLE_REG, 0x0);
	numOfRunningOps = 0;
	for(int i =0; i < 12; i++)
	{
		opArray[i].op = -1;
	}
}

void adjust_control(MidiMsg msg)
{
	if(msg.status != CONTROL_CHANGE)
	{
		xil_printf("/!\\ Error! Incorrect status for adjust_control! (%u) not recognized! /!\\\n\r", msg.status);
		return;
	}

	switch(msg.pitch)
	{
		case MASTER:
			set_ampl(msg.velocity);
			break;
		case F1:
			set_adsr(ATTACK, msg.velocity);
			break;
		case F2:
			set_adsr(DECAY, msg.velocity);
			break;
		case F3:
			set_adsr(SUSTAIN, msg.velocity);
			break;
		case F4:
			set_adsr(RELEASE, msg.velocity);
			break;
		case S1:
			reset_ops();
			break;
		default:
			// Not implemented
			break;
	}
}

void print_status(void)
{
	xil_printf("> Ampl : %u\n\r", Xil_In8(AMPL_REG));
	xil_printf("> ADSR : %u %u %u %u\n\r",
			Xil_In8(ATTACK_REG), Xil_In8(DECAY_REG),
			Xil_In8(SUSTAIN_REG), Xil_In8(RELEASE_REG)
	);
	xil_printf("> Ops :");
	for(int i=0; i<12; i++){
		xil_printf(" %i", opArray[i].op);
	}
	xil_printf("\r\n");

}

int read_ready(void)
{
	return Xil_In8(SLV_REG9);
}

int read_audio(void)
{
	return Xil_In16(SLV_REG9+0x2);
}
