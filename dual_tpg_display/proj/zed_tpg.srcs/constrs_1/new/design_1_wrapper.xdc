

set_property MARK_DEBUG true [get_nets {design_1_i/axi_vdma_0/s_axis_s2mm_tuser[0]}]
set_property MARK_DEBUG true [get_nets {design_1_i/v_tpg_0/m_axis_video_TUSER[0]}]
connect_debug_port u_ila_0/probe7 [get_nets [list design_1_i/axi_intc_0_irq]]

set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
