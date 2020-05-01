/**
 * Daria Solovey
 * May 1st 2020
 *
 * Synth Library
 *
 * Interfaces with Skrach Core IP allowing for control of
 * many of its parameters as well as operator enable and phase.
 */

#ifndef SYNTH_H   /* prevent circular inclusions */
#define SYNTH_H   /* by using protection macros */

#include "midi.h"

// ADSR Control
typedef enum ADSR
{
	ATTACK,
	DECAY,
	SUSTAIN,
	RELEASE
} ADSR;

// Types of waveforms
typedef enum WAVE
{
	SINE,
	TRIANGLE,
	SAW,
	SQUARE
} WAVE;

// Operator struct
// Contains the op and associated MIDI msg.
typedef struct Operator
{
	MidiMsg msg;
	short op;
} Operator;

// Map of control keys
typedef enum KeyMap
{
	MASTER	= 0x01,
	F1		= 0x12,
	F2		= 0x15,
	F3 		= 0x16,
	F4		= 0x17,
	S1		= 0x1C,
	S2		= 0x1D,
	S3		= 0x1E,
	S4		= 0x1F,
	S8		= 0x2F
} KeyMap;

// Utility Functions
void setup_synth(void);

void freq_to_phase(float freq, int op);

int phase_to_freq(int op);

void op_enable_write(int bit, int op);

/**
 * Sets the master amplitude of the system
 *
 * Takes in a value from 0 to 127 and sets the
 * proper register accordingly.
 */
void set_ampl(int val);

/**
 * Sets the master wave form of the system
 *
 * Takes an enum type representing the waveforms.
 *
 * SINE => '00'
 * TRIANGLE => '01'
 * SAW => '10'
 * SQUARE => '11'
 */
void set_waveform(WAVE type);

/**
 * Sets the master ADSR of the system
 *
 * Takes in a value from 0 to 127 and sets the
 * proper register according to the type given.
 *
 * ATTACK, DECAY, SUSTAIN, RELEASE
 */
void set_adsr(ADSR type, int val);

/**
 * Processes the midi message and tries to find the
 * next available operator. It implements a round
 * robin 'queue' to mitigate reusing the same operator
 * right after release which would cancel out ADRS effects.
 * This way, if there is a long release, it's less likely
 * that that release will be canceled.
 *
 * Returns a copy of the operator struct which contains
 * the MIDI packet and which operator is attached to that
 * packet
 */
Operator start_operator(MidiMsg msg);

/**
 * Processes the midi message and tries to find the
 * operator that corresponds to the pitch in the msg.
 * If found, will "release" it to allow the ADSR to
 * play the release portion of the envelope.
 *
 * Will return 1 on success, 0 on failure.
 *
 * Can be called multiple times to find lingering notes
 * in the case that a NOTE_OFF message was lost.
 */
int stop_operator(MidiMsg msg);

/**
 * Resets all the operators to off position. Does not
 * clear out the MIDI packets however.
 */
void reset_ops(void);

/**
 * Adjusts system parameters according to MIDI packet
 * received. This involves calling many of the functions
 * above such as reset_ops or any of the master signals
 * such as amplitude or ADSR.
 */
void adjust_control(MidiMsg msg);

// Debug
void print_status(void);

int read_ready(void);

int read_audio(void);

#endif  /* end of protection macro */
