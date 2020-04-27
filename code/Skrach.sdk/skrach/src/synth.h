#ifndef SYNTH_H   /* prevent circular inclusions */
#define SYNTH_H   /* by using protection macros */

typedef enum ADSR
{
	ATTACK,
	DECAY,
	SUSTAIN,
	RELEASE
} ADSR;

void setup_synth(void);
void freq_to_phase(float freq, int op);
int phase_to_freq(int op);
void op_enable_write(int bit, int op);
void set_ampl(int val);
void set_adsr(ADSR type, int val);
int read_ready(void);
int read_audio(void);

#endif  /* end of protection macro */
