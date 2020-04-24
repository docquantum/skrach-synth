#ifndef SYNTH_H   /* prevent circular inclusions */
#define SYNTH_H   /* by using protection macros */

void setup_synth(void);
void freq_to_phase(float freq);
int phase_to_freq(void);
void percent_to_ampl(int percent);
int ampl_to_percent(void);
int read_synth_regs(void);

#endif  /* end of protection macro */
