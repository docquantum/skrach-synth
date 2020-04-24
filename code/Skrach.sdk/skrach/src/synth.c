#include <xil_io.h>
#include "xparameters.h"
#include "synth.h"

#define SYNTH_BASE 			XPAR_LAB4_IP_0_S00_AXI_BASEADDR
#define	SIG_SEL_BIT			SYNTH_BASE // out 1 bit selects waveform
#define PHASE_REG			SYNTH_BASE+0x4 // out 10.6
#define AMPL_REG			SYNTH_BASE+0x8 // out 10.6
#define STATUS_REG			SYNTH_BASE+0xc // int sw & cw

void setup_synth(void)
{
	freq_to_phase(440);
}

void freq_to_phase(float freq)
{
	Xil_Out16(PHASE_REG, (int)((round(freq)-7)*65536)/48000);
//	Xil_Out16(PHASE_REG, 530);
}

int phase_to_freq(void)
{
	return 1 + ((48000 * Xil_In16(PHASE_REG) + (7 << 16)) >> 16);
}

void percent_to_ampl(int percent)
{
	Xil_Out16(AMPL_REG,  ((101 - percent) * 5));
}

int ampl_to_percent(void)
{
	return 101 - (Xil_In16(AMPL_REG) / 5);
}

int read_synth_regs(void)
{
	return Xil_In8(STATUS_REG);
}
