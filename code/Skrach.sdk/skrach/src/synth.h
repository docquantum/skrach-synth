#ifndef SYNTH_H   /* prevent circular inclusions */
#define SYNTH_H   /* by using protection macros */

#include "xparameters.h"

#define SYNTH_BASE 			XPAR_LAB4_IP_0_S00_AXI_BASEADDR
#define	SIG_SEL_BIT			SYNTH_BASE // out 1 bit selects waveform
#define PHASE_REG			SYNTH_BASE+4 // out 10.6
#define AMPL_REG			SYNTH_BASE+8 // out 10.6

void setup_synth(void);
void freq_to_phase(float freq);
int phase_to_freq(void);
void percent_to_ampl(int percent);
int ampl_to_percent(void);

#endif  /* end of protection macro */
