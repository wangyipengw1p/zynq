#include "hw_set.h"
#include "xparameters.h"






//--------------------------------------- callbacks for VDMA
/*
static void WriteCallBack0(void *CallbackRef, u32 Mask)
{
	if (Mask & XAXIVDMA_IXR_FRMCNT_MASK)
	{
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
		/* Set park pointer
		XAxiVdma_StartParking((XAxiVdma*)CallbackRef, wr_index[0], XAXIVDMA_WRITE);
		WriteOneFrameEnd[0] = hold_rd;
	}
}

static void WriteCallBack1(void *CallbackRef, u32 Mask)
{
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
		/* Set park pointer
		XAxiVdma_StartParking((XAxiVdma*)CallbackRef, wr_index[1], XAXIVDMA_WRITE);
		WriteOneFrameEnd[1] = hold_rd;
	}
}


static void WriteErrorCallBack(void *CallbackRef, u32 Mask)
{

	if (Mask & XAXIVDMA_IXR_ERROR_MASK) {
		WriteError += 1;
	}
}


void init_vdma(int w, int h, int ch){
	frame_length_curr = 0;
		/* Stop vdma write process, disable vdma interrupt
		//vdma_write_stop(&vdma_vin[ch]);
	//XAxiVdma_IntrDisable(&vdma_vin[ch], XAXIVDMA_IXR_ALL_MASK, XAXIVDMA_WRITE);
	init_vdmas(w,h,(unsigned int)pFrames0[0], (unsigned int)pFrames0[1], (unsigned int)pFrames0[2], WriteCallBack0,WriteCallBack1);
	if(ch == 0)
		{
			vdma_write_init(XPAR_AXIVDMA_0_DEVICE_ID, &vdma_vin[ch], w * 3, h, w * 3,(unsigned int)pFrames0[0], (unsigned int)pFrames0[1], (unsigned int)pFrames0[2]);
			XAxiVdma_SetCallBack(&vdma_vin[ch], XAXIVDMA_HANDLER_GENERAL,WriteCallBack0, (void *)&vdma_vin[ch], 1);
			XAxiVdma_SetCallBack(&vdma_vin[ch], XAXIVDMA_HANDLER_ERROR,WriteErrorCallBack, (void *)&vdma_vin[ch], 1);
			//InterruptConnect(&XScuGicInstance,XPAR_FABRIC_AXI_VDMA_0_S2MM_INTROUT_INTR,XAxiVdma_WriteIntrHandler,(void *)&vdma_vin[ch]);
		}
		else
		{
			vdma_write_init(XPAR_AXIVDMA_1_DEVICE_ID, &vdma_vin[ch], w * 3, h, w * 3,(unsigned int)pFrames1[0], (unsigned int)pFrames1[1], (unsigned int)pFrames1[2]);
			XAxiVdma_SetCallBack(&vdma_vin[ch], XAXIVDMA_HANDLER_GENERAL,WriteCallBack1, (void *)&vdma_vin[ch], 1);
			XAxiVdma_SetCallBack(&vdma_vin[ch], XAXIVDMA_HANDLER_ERROR,WriteErrorCallBack, (void *)&vdma_vin[ch], 1);
			//InterruptConnect(&XScuGicInstance,XPAR_FABRIC_AXI_VDMA_1_S2MM_INTROUT_INTR,XAxiVdma_WriteIntrHandler,(void *)&vdma_vin[ch]);
		}
		/* Start vdma write process
		//XAxiVdma_IntrEnable(&vdma_vin[ch], XAXIVDMA_IXR_ALL_MASK, XAXIVDMA_WRITE);
		vdma_write_start(&vdma_vin[ch]);
		frame_length_curr = w*h*3;
}*/
void init_tpg(){
	XV_tpg_Initialize(&inst_tpg0, 0);
	XV_tpg_Initialize(&inst_tpg1, 1);
	XV_tpg_Set_height(&inst_tpg0, IMG_H);
	XV_tpg_Set_height(&inst_tpg1, IMG_H);
	XV_tpg_Set_width(&inst_tpg1, IMG_W);
	XV_tpg_Set_width(&inst_tpg0, IMG_W);
	XV_tpg_Set_motionSpeed(&inst_tpg0, 10);
	XV_tpg_Set_motionSpeed(&inst_tpg1, 10);
	XV_tpg_Set_bckgndId(&inst_tpg0, 0xd);		//color sweep
	XV_tpg_Set_bckgndId(&inst_tpg1, 0xd);
	XV_tpg_Set_ovrlayId(&inst_tpg0, 0x1); 		//moving box
	XV_tpg_Set_ovrlayId(&inst_tpg1, 0x1);
	XV_tpg_Set_boxSize(&inst_tpg1, 50);
	XV_tpg_Set_boxColorR(&inst_tpg1, 0x66);		//a favorate color
	XV_tpg_Set_boxColorG(&inst_tpg1, 0xcd);
	XV_tpg_Set_boxColorB(&inst_tpg1, 0xaa);
	XV_tpg_Set_boxSize(&inst_tpg0, 30);
	XV_tpg_Set_boxColorR(&inst_tpg0, 0x66);		//a favorate color
	XV_tpg_Set_boxColorG(&inst_tpg0, 0xcd);
	XV_tpg_Set_boxColorB(&inst_tpg0, 0xaa);
	XV_tpg_EnableAutoRestart(&inst_tpg0);
	XV_tpg_EnableAutoRestart(&inst_tpg1);
	XV_tpg_Start(&inst_tpg0);
	XV_tpg_Start(&inst_tpg1);
	while(1)if (inst_tpg0.IsReady == XIL_COMPONENT_IS_READY && inst_tpg1.IsReady == XIL_COMPONENT_IS_READY)return;

}


