#include "xparameters.h"
#include "xil_cache.h"

#include "utils.h"

void enable_caches()
{
#ifdef __MICROBLAZE__
	#ifdef XPAR_MICROBLAZE_USE_ICACHE
		Xil_ICacheEnable();
	#endif
	#ifdef XPAR_MICROBLAZE_USE_DCACHE
		Xil_DCacheEnable();
	#endif
#endif
}

void disable_caches()
{
#ifdef __MICROBLAZE__
	#ifdef XPAR_MICROBLAZE_USE_DCACHE
		Xil_DCacheDisable();
	#endif
	#ifdef XPAR_MICROBLAZE_USE_ICACHE
		Xil_ICacheDisable();
	#endif
#endif
}

void setup()
{
    enable_caches();
}

void teardown()
{
    disable_caches();
}
