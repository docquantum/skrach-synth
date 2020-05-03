/**
 * Daria Solovey
 * May 1st 2020
 *
 * Utils Library
 *
 * Basic utilities that helps in set up
 * of the MicroBlaze.
 */

#ifndef UTILS_H   /* prevent circular inclusions */
#define UTILS_H   /* by using protection macros */

#include <xil_io.h>

#define	UART_REG		XPAR_AXI_UARTLITE_0_BASEADDR

void setup();
void teardown();

#endif /* end of protection macro */
