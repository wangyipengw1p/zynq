

#ifndef DISPLAY_DEMO_H_
#define DISPLAY_DEMO_H_


#include "xil_types.h"

/* ------------------------------------------------------------ */
/*					           Defines			        		*/
/* ------------------------------------------------------------ */
#define IMG_W 1920
#define IMG_H 1080
#define DEBUG 1									// whether print the debug message

#define DEMO_PATTERN_0 0
#define DEMO_PATTERN_1 1
#define DEMO_PATTERN_2 2
#define DEMO_PATTERN_3 3
#define DEMO_PATTERN_4 4
#define DEMO_PATTERN_5 5

#define DISPLAY_NUM_FRAMES 3					// tripple buffering in VDMA

#define DEMO_MAX_FRAME (1920*1080*3)			// used for alloc mem for frame buffer,
												//the max frame for tpg (in vivado) is set to 1920*1080 so it's enough

#define DEMO_STRIDE (IMG_W * 3)					// Note that for 24bits RGB mode stride is 3 times the width

#define UDP_BUFF_SIZE IMG_W*3					// one udp package contatins 3/3=1 line(s) of one frame
												// packet size can be random
												// check the bsp setting to make sure that pbuf size is big enough
#define frame_length_curr 3*IMG_W*IMG_H


#endif /* DISPLAY_DEMO_H_ */
