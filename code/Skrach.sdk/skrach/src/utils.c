#include "xparameters.h"
#include "xil_cache.h"

#include "utils.h"
#include "synth.h"
#include "midi.h"

void enable_caches()
{
	Xil_ICacheEnable();
	Xil_DCacheEnable();
}

void disable_caches()
{
	Xil_DCacheDisable();
	Xil_ICacheDisable();
}

void setup()
{
    enable_caches();
    //setup_synth();
}

void teardown()
{
    disable_caches();
}
