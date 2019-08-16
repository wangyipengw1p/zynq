#include "xv_tpg.h"
#include "xaxivdma.h"
#include "display_demo.h"
#include "vdma1.h"
#include "zynq_interrupt.h"



/*
 * for vdma itr
 */


//void init_vdma(int w, int h, int ch);

/*
 * for tpg
 */
XV_tpg inst_tpg0;

XV_tpg inst_tpg1;

void init_tpg();
