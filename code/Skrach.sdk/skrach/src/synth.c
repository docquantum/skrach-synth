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

void setup_synth(void)
{
	// test
	set_ampl(127);
	set_adsr(SUSTAIN, 127);
	freq_to_phase(375, 0);
	op_enable_write(1, 0);
	xil_printf("> ampl : %u\n\r", Xil_In8(AMPL_REG));
	xil_printf("> ADSR : %u %u %u %u\n\r",
			Xil_In8(ATTACK_REG), Xil_In8(DECAY_REG), Xil_In8(SUSTAIN_REG), Xil_In8(RELEASE_REG));
	xil_printf("> opEn : %x\n\r", Xil_In16(OP_ENABLE_REG));
	xil_printf("> op1  : %u\n\r", phase_to_freq(0));
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

int read_ready(void)
{
	return Xil_In8(SLV_REG9);
}

int read_audio(void)
{
	return Xil_In32(SLV_REG9);
}
