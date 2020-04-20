//#include <xil_io.h>
//#include "synth.h"
//
//void setup_synth(void)
//{
//	percent_to_ampl(90);
//	freq_to_phase(440);
//}
//
//void freq_to_phase(float freq)
//{
//	Xil_Out16(PHASE_REG, (int)((freq-7)*65536)/48000.0);
//}
//
//int phase_to_freq(void)
//{
//	return 1 + ((48000 * Xil_In16(PHASE_REG) + (7 << 16)) >> 16);
//}
//
//void percent_to_ampl(int percent)
//{
//	Xil_Out16(AMPL_REG,  ((101 - percent) * 5));
//}
//
//int ampl_to_percent(void)
//{
//	return 101 - (Xil_In16(AMPL_REG) / 5);
//}
