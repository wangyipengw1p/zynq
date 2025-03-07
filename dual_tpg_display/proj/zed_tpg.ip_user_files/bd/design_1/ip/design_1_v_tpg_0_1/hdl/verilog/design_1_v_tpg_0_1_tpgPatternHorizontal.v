// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module design_1_v_tpg_0_1_tpgPatternHorizontal (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        x,
        rampStart,
        color,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_ce
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] x;
input  [7:0] rampStart;
input  [7:0] color;
output  [7:0] ap_return_0;
output  [7:0] ap_return_1;
output  [7:0] ap_return_2;
input   ap_ce;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] rampVal_1;
wire   [7:0] tmp_251_cast_fu_72_p2;
wire   [0:0] tmp_fu_40_p2;
wire   [0:0] tmp_s_fu_58_p2;
wire   [7:0] Scalar_val_0_V_writ_fu_50_p3;
wire   [7:0] Scalar_val_1_V_writ_fu_64_p3;
reg   [0:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 rampVal_1 = 8'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state1))) begin
        rampVal_1 <= tmp_251_cast_fu_72_p2;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Scalar_val_0_V_writ_fu_50_p3 = ((tmp_fu_40_p2[0:0] === 1'b1) ? rampStart : rampVal_1);

assign Scalar_val_1_V_writ_fu_64_p3 = ((tmp_s_fu_58_p2[0:0] === 1'b1) ? Scalar_val_0_V_writ_fu_50_p3 : 8'd128);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_return_0 = Scalar_val_0_V_writ_fu_50_p3;

assign ap_return_1 = Scalar_val_1_V_writ_fu_64_p3;

assign ap_return_2 = Scalar_val_1_V_writ_fu_64_p3;

assign tmp_251_cast_fu_72_p2 = (Scalar_val_0_V_writ_fu_50_p3 + 8'd1);

assign tmp_fu_40_p2 = ((x == 16'd0) ? 1'b1 : 1'b0);

assign tmp_s_fu_58_p2 = ((color == 8'd0) ? 1'b1 : 1'b0);

endmodule //design_1_v_tpg_0_1_tpgPatternHorizontal
