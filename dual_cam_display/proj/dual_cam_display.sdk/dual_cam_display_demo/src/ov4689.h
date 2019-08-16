/*
 * Stand-alone driver for ov4689 on XSDK 
 * -------------
 * Yipeng Wang 2019.8.16
 */

#ifndef __OV4689_H__
#define __OV4689_H__
#include "xil_types.h"
struct reg_info
{
    u16 reg;
    u8 val;
};

#define SEQUENCE_INIT        0x00
#define SEQUENCE_NORMAL      0x01

#define SEQUENCE_PROPERTY    0xFFFD
#define SEQUENCE_WAIT_MS     0xFFFE
#define SEQUENCE_END	     0xFFFF

int sensor_init();
void sensor_set_output_size();
#endif
