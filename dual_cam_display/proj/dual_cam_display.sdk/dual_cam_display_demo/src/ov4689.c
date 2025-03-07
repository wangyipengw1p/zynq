/*
 * Stand-alone driver for ov4689 on XSDK 
 * Yipeng Wang 2019.8.16
 * Based on ov4689 datasheet and Ahel's python code
 */

#include "ov4689.h"
#include "xiicps.h"
#include "xparameters.h"
#include "xiicps.h"
#include "i2c/PS_i2c.h"

struct reg_info cam_init[]=
{
	{0x0103, 0x01},//  ; software reset
    {0xffff, 0x15},//
    {0x3638, 0x00},//  ; ADC & analog
    {0x0300, 0x00},//  ; PLL1 prediv
    {0x0302, 0x1a},//  ; PLL1 multiplier (1a)
    {0x0304, 0x03},//  ; PLL1 div mipi
    {0x030b, 0x00},//  ; PLL2 pre div
    {0x030d, 0x1e},//  ; PLL2 multiplier
    {0x030e, 0x04},//  ; PLL2 divs
    {0x030f, 0x01},//  ; PLL2 divsp
    {0x0312, 0x01},//  ; PLL2 divdac
    {0x031e, 0x00},//  ; Debug mode
    {0xffff, 0x15},//
    {0x3000, 0x20},//  ; FSIN output
    {0x3002, 0x00},//  ; Vsync input,  HREF input, FREX input, GPIO0 input
    {0x3018, 0x72},//  ; MIPI 4 lane, Reset MIPI PHY when sleep
    {0x3020, 0x93},//  ; Clock switch to PLL clock, Debug mode
    {0x3021, 0x03},// ; Sleep latch, software standby at line blank
    {0x3022, 0x01},//  ; LVDS disable, Enable power down MIPI when sleep
    {0x3031, 0x0a},//  ; MIPI 10-bit mode
    {0x3305, 0xf1},//  ; ASRAM
    {0x3307, 0x04},//  ; ASRAM
    {0x3309, 0x29},//  ; ASRAM
    {0x3500, 0x00},//  ; Long exposure HH
    {0x3501, 0x60},//  ; Long exposure H
    {0x3502, 0x00},//  ; Long exposure L
    {0x3503, 0x04},//  ; Gain delay 1 frame, use sensor gain, exposure delay 1 frame
    {0x3504, 0x00},//  ; debug mode
    {0x3505, 0x00},//  ; debug mode
    {0x3506, 0x00},//  ; debug mode
    {0x3507, 0x00},//  ; Long gain HH
    {0x3508, 0x00},//  ; Long gain H
    {0x3509, 0x80},//  ; Long gain L
    {0x350a, 0x00},//  ; Middle exposure HH
    {0x350b, 0x00},//  ; Middle exposure H
    {0x350c, 0x00},//  ; Middle exposure L
    {0x350d, 0x00},//  ; Middle gain HH
    {0x350e, 0x00},//  ; Middle gain H
    {0x350f, 0x80},//  ; Middle gain L
    {0x3510, 0x00},//  ; Short exposure HH
    {0x3511, 0x00},//  ; Short exposure H
    {0x3512, 0x00},//  ; Short exposure L
    {0x3513, 0x00},//  ; Short gain HH
    {0x3514, 0x00},//  ; Short gain H
    {0x3515, 0x80},//  ; Short gain L
    {0x3516, 0x00},//  ; 4th exposure HH
    {0x3517, 0x00},//  ; 4th exposure H
    {0x3518, 0x00},//  ; 4th exposure L
    {0x3519, 0x00},//  ; 4th gain HH
    {0x351a, 0x00},//  ; 4th gain H
    {0x351b, 0x80},//  ; 4th gian L
    {0x351c, 0x00},//  ; 5th exposure HH
    {0x351d, 0x00},//  ; 5th exposure H
    {0x351e, 0x00},//  ; 5th exposure L
    {0x351f, 0x00},//  ; 5th gain HH
    {0x3520, 0x00},//  ; 5th gain H
    {0x3521, 0x80},//  ; 5th gain L
    {0x3522, 0x08},//  ; Middle digital fraction gain H
    {0x3524, 0x08},//  ; Short digital fraction gain H
    {0x3526, 0x08},//  ; 4th digital fraction gain H
    {0x3528, 0x08},//  ; 5th digital framction gain H
    {0x352a, 0x08},//  ; Long digital fraction gain H
    {0x3602, 0x00},//  ; ADC & analog
    {0x3604, 0x02},//  ;
    {0x3605, 0x00},//  ;
    {0x3606, 0x00},//  ;
    {0x3607, 0x00},//  ;
    {0x3609, 0x12},//  ;
    {0x360a, 0x40},//  ;
    {0x360c, 0x08},//  ;
    {0x360f, 0xe5},//  ;
    {0x3608, 0x8f},//  ;
    {0x3611, 0x00},//  ;
    {0x3613, 0xf7},//  ;
    {0x3616, 0x58},//  ;
    {0x3619, 0x99},//  ;
    {0x361b, 0x60},//  ;
    {0x361c, 0x7a},//  ;
    {0x361e, 0x79},//  ;
    {0x361f, 0x02},//  ;
    {0x3632, 0x00},//  ;
    {0x3633, 0x10},//  ;
    {0x3634, 0x10},//  ;
    {0x3635, 0x10},//  ;
    {0x3636, 0x15},//  ;
    {0x3646, 0x86},//  ;
    {0x364a, 0x0b},//  ; ADC & analog
    {0x3700, 0x17},//  ; Sensor control
    {0x3701, 0x22},//  ;
    {0x3703, 0x10},//  ;
    {0x370a, 0x37},//  ;
    {0x3705, 0x00},//  ;
    {0x3706, 0x63},//  ;
    {0x3709, 0x3c},//  ;
    {0x370b, 0x01},//  ;
    {0x370c, 0x30},//  ;
    {0x3710, 0x24},//  ;
    {0x3711, 0x0c},//  ;
    {0x3716, 0x00},//  ;
    {0x3720, 0x28},//  ;
    {0x3729, 0x7b},//  ;
    {0x372a, 0x84},//  ;
    {0x372b, 0xbd},//  ;
    {0x372c, 0xbc},//  ;
    {0x372e, 0x52},//  ;
    {0x373c, 0x0e},//  ;
    {0x373e, 0x33},//  ;
    {0x3743, 0x10},//  ;
    {0x3744, 0x88},//  ;
    {0x3745, 0xc0},//  important!!!
    {0x374a, 0x43},//  ;
    {0x374c, 0x00},//  ;
    {0x374e, 0x23},//  ;
    {0x3751, 0x7b},//  ;
    {0x3752, 0x84},//  ;
    {0x3753, 0xbd},//  ;
    {0x3754, 0xbc},//  ;
    {0x3756, 0x52},//  ;
    {0x375c, 0x00},//  ;
    {0x3760, 0x00},//  ;
    {0x3761, 0x00},//  ;
    {0x3762, 0x00},//  ;
    {0x3763, 0x00},//  ;
    {0x3764, 0x00},//  ;
    {0x3767, 0x04},//  ;
    {0x3768, 0x04},//  ;
    {0x3769, 0x08},//  ;
    {0x376a, 0x08},//  ;
    {0x376b, 0x20},//  ;
    {0x376c, 0x00},//  ;
    {0x376d, 0x00},//  ;
    {0x376e, 0x00},//  ;
    {0x3773, 0x00},//  ;
    {0x3774, 0x51},//  ;
    {0x3776, 0xbd},//  ;
    {0x3777, 0xbd},//  ;
    {0x3781, 0x18},//  ;
    {0x3783, 0x25},//  ; Sensor control

    {0x3800, 0x00},//  ; H crop start H
    {0x3801, 0x08},//  ; H crop start L
    {0x3802, 0x00},//  ; V crop start H
    {0x3803, 0x04},//  ; V crop start L
    {0x3804, 0x09},//  ; H crop end H
    {0x3805, 0x90},//  ; H crop end L
    {0x3806, 0x06},//  ; V crop end H
    {0x3807, 0x1c},//  ; V crop end L

	/* Default output size 1734*1152 */
    {0x3808, 0x09},//  ; H output size H (0x05)
    {0x3809, 0x88},//  ; H output size L (0x40)
    {0x380a, 0x06},//  ; V output size H
    {0x380b, 0x18},//  ; V output size L (0xf8)

    //{0x3800, 0x0},//#  ; H crop start H
    //{0x3801, 0x0},//#  ; H crop start L
    //{0x3802, 0x0},//#  ; V crop start H
    //{0x3803, 0x0},//#  ; V crop start L
    //{0x3804, 0x0},//#  ; H crop end H
    //{0x3805, 0x9},//#  ; H crop end L
    //{0x3806, 0x0},//#  ; V crop end H
    //{0x3807, 0xf},//#  ; V crop end L
    //{0x3808, 0x0},//#  ; H output size H			
    //{0x3809, 0x8},//#  ; H output size L
    //{0x380a, 0x0},//#  ; V output size H
    //{0x380b, 0xf},//#  ; V output size L

    {0x380c, 0x05},//  ; HTS H
    {0x380d, 0x08},//  ; HTS L
    {0x380e, 0x06},//  ; VTS H
    {0x380f, 0x12},//  ; VTS L
    {0x3810, 0x00},//  ; H win off H
    {0x3811, 0x08},//  ; H win off L
    {0x3812, 0x00},//  ; V win off H
    {0x3813, 0x04},//  ; V win off L
    {0x3814, 0x01},//  ; H inc odd
    {0x3815, 0x01},//  ; H inc even
    {0x3819, 0x01},//  ; Vsync end L
    {0x3820, 0x00},//  ; flip off, bin off
    {0x3821, 0x06},//  ; mirror on, bin off
    {0x3829, 0x00},//  ; HDR lite off
    {0x382a, 0x01},//  ; vertical subsample odd increase number
    {0x382b, 0x01},//  ; vertical subsample even increase number
    {0x382d, 0x7f},//  ; black column end address
    {0x3830, 0x04},//  ; blc use num/2
    {0x3836, 0x01},//  ; r zline use num/2
    {0x3841, 0x02},//  ; r_rcnt_fix on
    {0x3846, 0x08},//  ; fcnt_trig_rst_en on
    {0x3847, 0x07},//  ; debug mode
    {0x3d85, 0x36},//  ; OTP bist enable, OTP BIST compare with zero, OTP power up load data on, OTP power up load setting on, OTP write register load setting off
    {0x3d8c, 0x71},//  ; OTP start address H
    {0x3d8d, 0xcb},//  ; OTP start address L
    {0x3f0a, 0x00},//  ; PSRAM
    {0x4000, 0x71},//  ; out of range trig off, format chg on, gain chg on, exp chg on, manual trig off, no freeze, always trig off, debug mode
    {0x4001, 0x40},//  ; debug mode
    {0x4002, 0x04},//  ; debug mode
    {0x4003, 0x14},//  ; black line number
    {0x400e, 0x00},//  ; offset for BLC bypass
    {0x4011, 0x00},//  ; offset man same off, offset man off, black line output off,
    {0x401a, 0x00},//  ; debug mode
    {0x401b, 0x00},//  ; debug mode
    {0x401c, 0x00},//  ; debug mode
    {0x401d, 0x00},//  ; debug mode
    {0x401f, 0x00},//  ; debug mode
    {0x4020, 0x00},//  ; Anchor left start H
    {0x4021, 0x10},//  ; Anchor left start L
    {0x4022, 0x07},//  ; Anchor left end H
    {0x4023, 0xcf},//  ; Anchor left end L
    {0x4024, 0x09},//  ; Anchor right start H
    {0x4025, 0x60},//  ; Andhor right start L
    {0x4026, 0x09},//  ; Anchor right end H
    {0x4027, 0x6f},//  ; Anchor right end L
    {0x4028, 0x00},//  ; top Zline start
    {0x4029, 0x02},//  ; top Zline number
    {0x402a, 0x06},//  ; top blk line start
    {0x402b, 0x04},//  ; to blk line number
    {0x402c, 0x02},//  ; bot Zline start
    {0x402d, 0x02},//  ; bot Zline number
    {0x402e, 0x0e},//  ; bot blk line start
    {0x402f, 0x04},//  ; bot blk line number
    {0x4302, 0xff},//  ; clipping max H
    {0x4303, 0xff},//  ; clipping max L
    {0x4304, 0x00},//  ; clipping min H
    {0x4305, 0x00},//  ; clipping min L
    {0x4306, 0x00},//  ; vfifo pix swap off, dpcm off, vfifo first line is blue line
    {0x4308, 0x02},//  ; debug mode, embeded off
    {0x4500, 0x6c},//  ; ADC sync control
    {0x4501, 0xc4},//  ;
    {0x4502, 0x40},//  ;
    {0x4503, 0x02},//  ; ADC sync control
    {0x4601, 0x04},//  ; V fifo read start
    {0x4800, 0x04},//  ; MIPI always high speed off, Clock lane gate off, line short packet off, 
    {0x4813, 0x08},//  ; Select HDR VC
    {0x481f, 0x40},//  ; MIPI clock prepare min
    {0x4829, 0x78},//  ; MIPI HS exit min
    {0x4837, 0x18},//  ; MIPI global timing
    {0x4b00, 0x2a},// 
    {0x4b0d, 0x00},// 
    {0x4d00, 0x04},//  ; tpm slope H
    {0x4d01, 0x42},//  ; tpm slope L
    {0x4d02, 0xd1},//  ; tpm offset HH
    {0x4d03, 0x93},//  ; tpm offset H
    {0x4d04, 0xf5},//  ; tpm offset M
    {0x4d05, 0xc1},//  ; tpm offset L
    {0x5000, 0xf3},//  ; digital gain on, bin on, OTP on, WB gain on, average on, ISP on
    {0x5001, 0x11},//  ; ISP EOF select, ISP SOF off, BLC on
    {0x5004, 0x00},//  ; debug mode
    {0x500a, 0x00},//  ; debug mode
    {0x500b, 0x00},//  ; debug mode
    {0x5032, 0x00},//  ; debug mode
    {0x5040, 0x00},//  ; test mode off
    {0x5050, 0x0c},//  ; debug mode
    {0x5500, 0x00},// ; OTP DPC start H
    {0x5501, 0x10},// ; OTP DPC start L
    {0x5502, 0x01},// ; OTP DPC end H
    {0x5503, 0x0f},// ; OTP DPC end L
    {0x8000, 0x00},//  ; test mode
    {0x8001, 0x00},//  ;
    {0x8002, 0x00},//  ;
    {0x8003, 0x00},//  ;
    {0x8004, 0x00},//  ;
    {0x8005, 0x00},//  ;
    {0x8006, 0x00},//  ;
    {0x8007, 0x00},//  ;
    {0x8008, 0x00},//  ; test mode
    {0x3638, 0x00},//  ; ADC & analog
    {0x3105, 0x31},//  ; SCCB control, debug mode
    {0x301a, 0xf9},//  ; enable emb clock, enable strobe clock, enable timing control clock, mipi-phy manual reset, reset timing control block
    {0x3508, 0x07},//  ; Long gain H
    {0x484b, 0x05},// ; line start after fifo_st, sclock start after SOF, frame start after SOF
    {0x4805, 0x03},// ; MIPI control
    {0x3601, 0x01},//  ; ADC & analog
    {0x0100, 0x01},//  ; wake up from sleep
    {0xffff,0x02},//0x; de, 0xay),# 2ms here
    {0x3105, 0x11},//  ; SCCB control, debug mode
    {0x301a, 0xf1},//  ; disable mipi-phy reset
    {0x4805, 0x00},// ; MIPI control
    {0x301a, 0xf0},//  ; enable emb clock, enable strobe clock, enable timing control clock,
    {0x3208, 0x00},//  ; group hold start, group bank 0
    {0x302a, 0x00},//  ; delay?
    {0x302a, 0x00},//  ;
    {0x302a, 0x00},//  ;
    {0x302a, 0x00},//  ;
    {0x302a, 0x00},//  ;
    {0x3601, 0x00},//  ; ADC & analog
    {0x3638, 0x00},//  ; ADC & analog
    {0x3208, 0x10},//  ; group hold end, group select 0
    {0x3208, 0xa0},//  ; group delay launch, group select 0
	//MWB gain	 
    {0x500c, 0x08},//
    {0x500d, 0x88},//
    {0x500e, 0x04},//
    {0x500f, 0x00},//
    {0x5010, 0x06},//
    {0x5011, 0x3d},//
	{0x0100, 0x01},//#; wake up from sleep 
	{SEQUENCE_END, 0x00}
};

int ov4689_read(XIicPs *IicInstance,u16 addr,u8 *read_buf)
{
	*read_buf=i2c_reg16_read(IicInstance,0x3c,addr);
	return XST_SUCCESS;
}

int ov4689_write(XIicPs *IicInstance,u16 addr,u8 data)
{

	return i2c_reg16_write(IicInstance,0x3c,addr,data);
}

/* write a array of registers  */
void sensor_write_array(XIicPs *IicInstance, struct reg_info *regarray)
{
    int i = 0;
    while (regarray[i].reg != SEQUENCE_END) {
		ov4689_write(IicInstance,regarray[i].reg,regarray[i].val);
		i++;
	}

}

int sensor_init(XIicPs *IicInstance)
{
	sensor_write_array(IicInstance,cam_init);
	return 0;
}

void sensor_set_output_size(XIicPs *IicInstance, int H, int V){
	i2c_reg16_write(&IicInstance, 0x3c, 0x3808, (H>>8)&0xff);
	i2c_reg16_write(&IicInstance, 0x3c, 0x3809, (H>>0)&0xff);
	i2c_reg16_write(&IicInstance, 0x3c, 0x380a, (V>>8)&0xff);
	i2c_reg16_write(&IicInstance, 0x3c, 0x380b, (V>>0)&0xff);
}
