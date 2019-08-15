/******************************************************************************
*
* Copyright (C) 2014 - 2016 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/
/*****************************************************************************/
/**
 *
 * @file vdma.c
 *
 * This file comprises sample application to  usage of VDMA APi's in vdma_api.c.
 *  .
 *
 * MODIFICATION HISTORY:
 *
 * Ver   Who  Date     Changes
 * ----- ---- -------- -------------------------------------------------------
 * 4.0   adk  11/26/15 First release
 * 4.1   adk  01/07/16 Updated DDR base address for Ultrascale (CR 799532) and
 *		       removed the defines for S6/V6.
 *       ms   04/05/17 Modified Comment lines in functions to
 *                     recognize it as documentation block for doxygen
 *                     generation of examples.
 ****************************************************************************/

/*** Include file ***/
#include "xparameters.h"
#include "xstatus.h"
//#include "xintc.h"
#include "xil_exception.h"
#include "xil_assert.h"
#include "xaxivdma.h"
#include "xaxivdma_i.h"
#include "display_demo.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "zynq_interrupt.h"


#ifdef XPAR_AXI_7SDDR_0_S_AXI_BASEADDR
#define MEMORY_BASE		XPAR_AXI_7SDDR_0_S_AXI_BASEADDR
#elif XPAR_MIG7SERIES_0_BASEADDR
#define MEMORY_BASE	XPAR_MIG7SERIES_0_BASEADDR
#elif XPAR_MIG_0_BASEADDR
#define MEMORY_BASE	XPAR_MIG_0_BASEADDR
#elif XPAR_PSU_DDR_0_S_AXI_BASEADDR
#define MEMORY_BASE	XPAR_PSU_DDR_0_S_AXI_BASEADDR
#else
#warning CHECK FOR THE VALID DDR ADDRESS IN XPARAMETERS.H, \
			DEFAULT SET TO 0x01000000
#define MEMORY_BASE		0x01000000
#endif




int wr_index[2]={0,0};
int rd_index[2]={0,0};
static int WriteError;
int frame_length_curr=3*IMG_H*IMG_W;
extern  int WriteOneFrameEnd[2];



/*** Global Variables ***/
unsigned int srcBuffer = (MEMORY_BASE  + 0x1000000);

/* Instance of the Interrupt Controller */
//static XIntc Intc;

int run_triple_frame_buffer(XAxiVdma* InstancePtr, int DeviceId, int hsize,
		int vsize, int buf_base_addr, int number_frame_count,
		int enable_frm_cnt_intr);

static int SetupIntrSystem(XAxiVdma *AxiVdmaPtr,XAxiVdma *AxiVdmaPtr_1
		,u16 WriteIntrId,u16 WriteIntrId_1);

/*****************************************************************************/
/**
* Main function
*
* This is main entry point to demonstrate this example.
*
* @return	None
*
******************************************************************************/


/*****************************************************************************/
/*
 * Call back function for read channel
 *
 * The user can put his code that should get executed when this
 * call back happens.
 *
 * @param	CallbackRef is the call back reference pointer
 * @param	Mask is the interrupt mask passed in from the driver
 *
 * @return	None
*
******************************************************************************/
static void ReadCallBack(void *CallbackRef, u32 Mask)
{
	/* User can add his code in this call back function */
	xil_printf("Read Call back function is called\r\n");
}

/*****************************************************************************/
/*
 * The user can put his code that should get executed when this
 * call back happens.
 *
 * @param	CallbackRef is the call back reference pointer
 * @param	Mask is the interrupt mask passed in from the driver
 *
 * @return	None
*
******************************************************************************/
static void ReadErrorCallBack(void *CallbackRef, u32 Mask)
{
	/* User can add his code in this call back function */
	xil_printf("Read Call back Error function is called\r\n");


}

/*****************************************************************************/
/*The user can put his code that should get executed when this
 * call back happens.
 *
 *
 * This callback only clears the interrupts and updates the transfer status.
 *
 * @param	CallbackRef is the call back reference pointer
 * @param	Mask is the interrupt mask passed in from the driver
 *
 * @return	None
*
******************************************************************************/
static void WriteCallBack(void *CallbackRef, u32 Mask)
{
	/* User can add his code in this call back function */
	//xil_printf("Write Call back function 1 is called, value: %d %d\r\n",WriteOneFrameEnd[0],WriteOneFrameEnd[1]);
	if (Mask & XAXIVDMA_IXR_FRMCNT_MASK)
		{//xil_printf("W\r\n");
		//xil_printf("%d\r\n", WriteOneFrameEnd[0]);
			if(WriteOneFrameEnd[0] >= 0)
			{
				return;
			}
			int hold_rd = rd_index[0];
			if(wr_index[0]==2)
			{
				wr_index[0]=0;
				rd_index[0]=2;
			}
			else
			{
				rd_index[0] = wr_index[0];
				wr_index[0]++;

			}
			/* Set park pointer */
			XAxiVdma_StartParking((XAxiVdma*)CallbackRef, wr_index[0], XAXIVDMA_WRITE);
			WriteOneFrameEnd[0] = hold_rd;
		}

}
static void WriteCallBack_1(void *CallbackRef, u32 Mask)
{
	/* User can add his code in this call back function */
	//xil_printf("Write Call back function 2 is called, value: %d %d\r\n",WriteOneFrameEnd[0],WriteOneFrameEnd[1]);
	if (Mask & XAXIVDMA_IXR_FRMCNT_MASK)
		{
			if(WriteOneFrameEnd[1] >= 0)
			{
				return;
			}
			int hold_rd = rd_index[1];
			if(wr_index[1]==2)
			{
				wr_index[1]=0;
				rd_index[1]=2;
			}
			else
			{
				rd_index[1] = wr_index[1];
				wr_index[1]++;
			}
			/* Set park pointer */
			XAxiVdma_StartParking((XAxiVdma*)CallbackRef, wr_index[1], XAXIVDMA_WRITE);
			WriteOneFrameEnd[1] = hold_rd;
		}
}
/*****************************************************************************/
/*
* The user can put his code that should get executed when this
* call back happens.
*
* @param	CallbackRef is the call back reference pointer
* @param	Mask is the interrupt mask passed in from the driver
*
* @return	None
*
******************************************************************************/
static void WriteErrorCallBack(void *CallbackRef, u32 Mask)
{

	/* User can add his code in this call back function */
	xil_printf("Write Call back Error function 1 is called. value: %d %d \r\n", WriteOneFrameEnd[0],WriteOneFrameEnd[1]);
	if (Mask & XAXIVDMA_IXR_ERROR_MASK) {
			WriteError += 1;
			xil_printf("%x/r/n",Xil_In32(XPAR_AXI_VDMA_0_BASEADDR+0x34));
			xil_printf("%x/r/n",Xil_In32(XPAR_AXI_VDMA_0_BASEADDR+0x30));
			Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR+0x34, Xil_In32(XPAR_AXI_VDMA_0_BASEADDR+0x34) & 0xfffff00f);
			//Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR+0x34, Xil_In32(XPAR_AXI_VDMA_0_BASEADDR+0x30) & 0x01);
			xil_printf("%x/r/n",Xil_In32(XPAR_AXI_VDMA_0_BASEADDR+0x34));
		}
	return;
}
static void WriteErrorCallBack_1(void *CallbackRef, u32 Mask)
{

	/* User can add his code in this call back function */
	xil_printf("Write Call back Error function 2 is called value: %d %d \r\n", WriteOneFrameEnd[0],WriteOneFrameEnd[1]);
	if (Mask & XAXIVDMA_IXR_ERROR_MASK) {
			WriteError += 1;
			xil_printf("%x/r/n",Xil_In32(XPAR_AXI_VDMA_1_BASEADDR+0x34));
			xil_printf("%x/r/n",Xil_In32(XPAR_AXI_VDMA_1_BASEADDR+0x30));
			Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR+0x34, Xil_In32(XPAR_AXI_VDMA_1_BASEADDR+0x34) & 0xfffff00f);
			//Xil_Out32(XPAR_AXI_VDMA_1_BASEADDR+0x34, Xil_In32(XPAR_AXI_VDMA_1_BASEADDR+0x30) & 0x01);
			xil_printf("%x/r/n",Xil_In32(XPAR_AXI_VDMA_1_BASEADDR+0x34));
		}
	return;
}

/*****************************************************************************/
/*
*
* This function setups the interrupt system so interrupts can occur for the
* DMA.  This function assumes INTC component exists in the hardware system.
*
* @param	AxiDmaPtr is a pointer to the instance of the DMA engine
* @param	ReadIntrId is the read channel Interrupt ID.
* @param	WriteIntrId is the write channel Interrupt ID.
*
* @return	XST_SUCCESS if successful, otherwise XST_FAILURE.
*
* @note		None.
*
******************************************************************************/
/*static int SetupIntrSystem(XAxiVdma *AxiVdmaPtr,XAxiVdma *AxiVdmaPtr_1
				,u16 WriteIntrId,u16 WriteIntrId_1)
{
	int Status;
	XIntc *IntcInstancePtr =&Intc;

	/* Initialize the interrupt controller and connect the ISRs *
	Status = XIntc_Initialize(IntcInstancePtr, XPAR_INTC_0_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		xil_printf( "Failed init intc\r\n");
		return XST_FAILURE;
	}
	/*
	Status = XIntc_Connect(IntcInstancePtr, ReadIntrId,
	         (XInterruptHandler)XAxiVdma_ReadIntrHandler, AxiVdmaPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("Failed read channel connect intc %d\r\n", Status);
		return XST_FAILURE;
	}
	*
	XAxiVdma_SetCallBack(AxiVdmaPtr, XAXIVDMA_HANDLER_GENERAL,
		WriteCallBack, (void *)AxiVdmaPtr, XAXIVDMA_WRITE);
	XAxiVdma_SetCallBack(AxiVdmaPtr_1, XAXIVDMA_HANDLER_GENERAL,
		WriteCallBack_1, (void *)AxiVdmaPtr_1, XAXIVDMA_WRITE);

	XAxiVdma_SetCallBack(AxiVdmaPtr, XAXIVDMA_HANDLER_ERROR,
		WriteErrorCallBack, (void *)AxiVdmaPtr, XAXIVDMA_WRITE);

	XAxiVdma_SetCallBack(AxiVdmaPtr_1, XAXIVDMA_HANDLER_ERROR,
		WriteErrorCallBack_1, (void *)AxiVdmaPtr_1, XAXIVDMA_WRITE);


	Status = XIntc_Connect(IntcInstancePtr, WriteIntrId,
	         (XInterruptHandler)XAxiVdma_WriteIntrHandler, AxiVdmaPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("Failed write channel connect intc %d\r\n", Status);
		return XST_FAILURE;
	}
	Status = XIntc_Connect(IntcInstancePtr, WriteIntrId_1,
			 (XInterruptHandler)XAxiVdma_WriteIntrHandler, AxiVdmaPtr_1);
	if (Status != XST_SUCCESS) {
		xil_printf("Failed write channel 1 connect intc %d\r\n", Status);
		return XST_FAILURE;
	}

	/* Start the interrupt controller *
	Status = XIntc_Start(IntcInstancePtr, XIN_REAL_MODE);
	if (Status != XST_SUCCESS) {
		xil_printf( "Failed to start intc\r\n");
		return XST_FAILURE;
	}

	/* Enable interrupts from the hardware
	//XIntc_Enable(IntcInstancePtr, ReadIntrId);
	XIntc_Enable(IntcInstancePtr, WriteIntrId);
	XIntc_Enable(IntcInstancePtr, WriteIntrId_1);

	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			(Xil_ExceptionHandler)XIntc_InterruptHandler,
			(void *)IntcInstancePtr);

	Xil_ExceptionEnable();

	/* Register call-back functions

	XAxiVdma_SetCallBack(AxiVdmaPtr, XAXIVDMA_HANDLER_GENERAL, ReadCallBack,
		(void *)AxiVdmaPtr, XAXIVDMA_READ);

	XAxiVdma_SetCallBack(AxiVdmaPtr, XAXIVDMA_HANDLER_ERROR,
		ReadErrorCallBack, (void *)AxiVdmaPtr, XAXIVDMA_READ);


	return XST_SUCCESS;
}*/

/*****************************************************************************/
/**
*
* This function disables the interrupts
*
* @param	ReadIntrId is interrupt ID associated w/ DMA read channel
* @param	WriteIntrId is interrupt ID associated w/ DMA write channel
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
/*static void DisableIntrSystem(u16 ReadIntrId, u16 WriteIntrId)
{

	/* Disconnect the interrupts for the DMA TX and RX channels
	XIntc_Disconnect(&Intc, ReadIntrId);
	XIntc_Disconnect(&Intc, WriteIntrId);

}*/



void init_vdmas(){

	int Status;
	XAxiVdma InstancePtr;
	XAxiVdma InstancePtr_1;
	XScuGic XScuGicInstancePtr;
	/*
	XAxiVdma_Reset(&InstancePtr, XAXIVDMA_WRITE);
	XAxiVdma_Reset(&InstancePtr_1, XAXIVDMA_WRITE);
	while(XAxiVdma_ResetNotDone(&InstancePtr, XAXIVDMA_WRITE));
	while(XAxiVdma_ResetNotDone(&InstancePtr_1, XAXIVDMA_WRITE));*/
	/*vdma_write_stop(&InstancePtr);
	vdma_write_stop(&InstancePtr_1);
	XAxiVdma_IntrDisable(&InstancePtr, XAXIVDMA_IXR_ALL_MASK, XAXIVDMA_WRITE);
	XAxiVdma_IntrDisable(&InstancePtr_1, XAXIVDMA_IXR_ALL_MASK, XAXIVDMA_WRITE);*/
	xil_printf("Starting the first VDMA \n\r");

	/* Calling the API to configure and start VDMA without frame counter interrupt */
	Status = run_triple_frame_buffer(&InstancePtr, 0, IMG_W, IMG_H,
						srcBuffer, 1, 1);
	if (Status != XST_SUCCESS) {
		xil_printf("Transfer of frames failed with error = %d\r\n",Status);
		return XST_FAILURE;
	} else {
		xil_printf("Transfer of frames started \r\n");
	}

	xil_printf("Starting the second VDMA \r\n");

	/* Calling the API to configure and start second VDMA with frame counter interrupt
	 * Please note source buffer pointer is being offset a bit */
	Status = run_triple_frame_buffer(&InstancePtr_1, 1, IMG_W, IMG_H,
						srcBuffer + 0x1000000, 1, 1);
	if (Status != XST_SUCCESS){
		xil_printf("Transfer of frames failed with error = %d\r\n",Status);
		return XST_FAILURE;
	} else {
		xil_printf("Transfer of frames started \r\n");
	}
	XAxiVdma_SetCallBack(&InstancePtr, XAXIVDMA_HANDLER_GENERAL,
			WriteCallBack, (void *)&InstancePtr, XAXIVDMA_WRITE);
		XAxiVdma_SetCallBack(&InstancePtr_1, XAXIVDMA_HANDLER_GENERAL,
			WriteCallBack_1, (void *)&InstancePtr_1, XAXIVDMA_WRITE);

		XAxiVdma_SetCallBack(&InstancePtr, XAXIVDMA_HANDLER_ERROR,
			WriteErrorCallBack, (void *)&InstancePtr, XAXIVDMA_WRITE);

		XAxiVdma_SetCallBack(&InstancePtr_1, XAXIVDMA_HANDLER_ERROR,
			WriteErrorCallBack_1, (void *)&InstancePtr_1, XAXIVDMA_WRITE);
	/* Enabling the interrupt for  VDMA */
	//SetupIntrSystem(&InstancePtr,&InstancePtr_1, XPAR_INTC_0_AXIVDMA_0_VEC_ID,XPAR_INTC_0_AXIVDMA_1_VEC_ID);
	//XAxiVdma_SetCallBack(&vdma_vin[ch], XAXIVDMA_HANDLER_GENERAL,WriteCallBack1, (void *)&vdma_vin[ch], XAXIVDMA_WRITE);
		InterruptConnect(&XScuGicInstancePtr,XPAR_FABRIC_AXI_VDMA_0_S2MM_INTROUT_INTR,XAxiVdma_WriteIntrHandler,(void *)&InstancePtr);
		XAxiVdma_IntrEnable(&InstancePtr, XAXIVDMA_IXR_ALL_MASK, XAXIVDMA_WRITE);
		//vdma_write_start(&InstancePtr);
		InterruptConnect(&XScuGicInstancePtr,XPAR_FABRIC_AXI_VDMA_0_S2MM_INTROUT_INTR,XAxiVdma_WriteIntrHandler,(void *)&InstancePtr_1);
		XAxiVdma_IntrEnable(&InstancePtr_1, XAXIVDMA_IXR_ALL_MASK, XAXIVDMA_WRITE);
		//vdma_write_start(&InstancePtr_1);
	/* Infinite while loop to let it run */
	return;
}

