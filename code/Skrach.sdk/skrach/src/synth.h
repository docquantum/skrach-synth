#ifndef SYNTH_H   /* prevent circular inclusions */
#define SYNTH_H   /* by using protection macros */

#include "midi.h"

typedef enum ADSR
{
	ATTACK,
	DECAY,
	SUSTAIN,
	RELEASE
} ADSR;

typedef struct Operator
{
	MidiMsg msg;
	short op;
} Operator;

typedef enum KeyMap
{
	MASTER	= 0x01,
	F1		= 0x12,
	F2		= 0x15,
	F3 		= 0x16,
	F4		= 0x17,
	S1		= 0x1C
} KeyMap;

// Utility Functions
void setup_synth(void);

void freq_to_phase(float freq, int op);

int phase_to_freq(int op);

void op_enable_write(int bit, int op);

// Master amplitude
void set_ampl(int val);

// Master ADSR
void set_adsr(ADSR type, int val);

// Operator & Control
Operator start_operator(MidiMsg msg);

/**
 * Processes the midi message and tries to find the
 * operator that corresponds to the pitch in the msg.
 * If found, will "release" it to allow the ADSR to
 * play the release portion of the envelope.
 *
 * Will return 1 on success, 0 on failure.
 *
 * Can be called multiple times to find lingering notes.
 */
int stop_operator(MidiMsg msg);

void reset_ops(void);

void adjust_control(MidiMsg msg);

// Debug
void print_status(void);

int read_ready(void);

int read_audio(void);

#endif  /* end of protection macro */
