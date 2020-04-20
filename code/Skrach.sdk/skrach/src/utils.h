#include "xil_printf.h"						// Contains xil_printf
#include <xuartlite_l.h>					// Contains XUartLite_RecvByte
#include <xil_io.h>							// Contains Xil_Out8 and its variations
#define	UART_REG		XPAR_AXI_UARTLITE_0_BASEADDR
#define	MIDI_REG		XPAR_AXI_UARTLITE_1_BASEADDR

void setup();
void teardown();
