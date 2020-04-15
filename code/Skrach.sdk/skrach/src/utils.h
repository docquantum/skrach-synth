#include "xil_printf.h"						// Contains xil_printf
#include <xuartlite_l.h>					// Contains XUartLite_RecvByte
#include <xil_io.h>							// Contains Xil_Out8 and its variations
#define	uartReg				0x40600000
#define	midiReg				0x40610000

void setup();
void teardown();
