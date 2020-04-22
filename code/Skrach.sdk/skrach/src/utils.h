#ifndef UTILS_H   /* prevent circular inclusions */
#define UTILS_H   /* by using protection macros */

#include <xil_io.h>

#define	UART_REG		XPAR_AXI_UARTLITE_0_BASEADDR

void setup();
void teardown();

#endif /* end of protection macro */
