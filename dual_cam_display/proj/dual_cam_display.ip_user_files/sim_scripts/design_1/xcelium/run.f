-makelib xcelium_lib/xilinx_vip -sv \
  "/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/sc_util_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/axi_protocol_checker_v2_0_3 -sv \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/03a9/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_3 -sv \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b9a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_5 -sv \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_12 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_proc_sys_reset_0_0/sim/design_1_proc_sys_reset_0_0.vhd" \
-endlib
-makelib xcelium_lib/xlslice_v1_0_1 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xlslice_0_1/sim/design_1_xlslice_0_1.v" \
-endlib
-makelib xcelium_lib/v_demosaic_v1_0_3 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_1/hdl/v_demosaic_v1_0_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_v_demosaic_0_1/sim/design_1_v_demosaic_0_1.v" \
-endlib
-makelib xcelium_lib/xbip_utils_v3_0_9 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/a5f8/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_reg_fd_v12_0_5 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/cbdd/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/da55/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_pipe_v3_0_5 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/442e/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_addsub_v3_0_5 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ad9e/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_addsub_v3_0_5 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0e42/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_addsub_v12_0_12 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/7f1a/hdl/c_addsub_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_gate_bit_v12_0_5 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/693f/hdl/c_gate_bit_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_counter_v3_0_5 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0952/hdl/xbip_counter_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/c_counter_binary_v12_0_12 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/c366/hdl/c_counter_binary_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_c_counter_binary_0_1/sim/design_1_c_counter_binary_0_1.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_2 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_2 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_2 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_11 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/6078/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_1 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/lib_bmg_v1_0_10 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/9340/hdl/lib_bmg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_datamover_v5_1_19 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec8a/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_vdma_v6_3_5 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl/axi_vdma_v6_3_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vdma_v6_3_5 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl/axi_vdma_v6_3_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_vdma_0_1/sim/design_1_axi_vdma_0_1.vhd" \
-endlib
-makelib xcelium_lib/axis_infrastructure_v1_1_0 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl/axis_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axis_data_fifo_v1_1_18 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5738/hdl/axis_data_fifo_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axis_data_fifo_0_1/sim/design_1_axis_data_fifo_0_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ba77/hdl/csi2_parser.vhd" \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ba77/hdl/lane_align.vhd" \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ba77/hdl/lane_merge.vhd" \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ba77/hdl/csi_to_axis_v1_0.vhd" \
  "../../../bd/design_1/ip/design_1_csi_to_axis_0_1/sim/design_1_csi_to_axis_0_1.vhd" \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/a4ed/hdl/phy_clock_system.vhd" \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/a4ed/hdl/line_if.vhd" \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/a4ed/hdl/csi2_d_phy_rx.vhd" \
  "../../../bd/design_1/ip/design_1_csi2_d_phy_rx_0_1/sim/design_1_csi2_d_phy_rx_0_1.vhd" \
  "../../../bd/design_1/ip/design_1_proc_sys_reset_1_0/sim/design_1_proc_sys_reset_1_0.vhd" \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/7e0c/hdl/axis_raw_unpack_v1_0.vhd" \
  "../../../bd/design_1/ip/design_1_axis_raw_unpack_0_1/sim/design_1_axis_raw_unpack_0_1.vhd" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_5 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/f1c3/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xlconstant_0_1/sim/design_1_xlconstant_0_1.v" \
  "../../../bd/design_1/ip/design_1_xlslice_0_0/sim/design_1_xlslice_0_0.v" \
  "../../../bd/design_1/ip/design_1_v_demosaic_0_0/sim/design_1_v_demosaic_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_c_counter_binary_0_0/sim/design_1_c_counter_binary_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_axi_vdma_0_0/sim/design_1_axi_vdma_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axis_data_fifo_0_0/sim/design_1_axis_data_fifo_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_csi_to_axis_0_0/sim/design_1_csi_to_axis_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_csi2_d_phy_rx_0_0/sim/design_1_csi2_d_phy_rx_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_proc_sys_reset_0_1/sim/design_1_proc_sys_reset_0_1.vhd" \
  "../../../bd/design_1/ip/design_1_axis_raw_unpack_0_0/sim/design_1_axis_raw_unpack_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_1 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_17 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_16 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_18 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/15a3/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xbar_1/sim/design_1_xbar_1.v" \
  "../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_17 \
  "../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ccfb/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
  "../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/sim/design_1.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_v_demosaic_0_1/src/v_demosaic.cpp" \
  "../../../bd/design_1/ip/design_1_v_demosaic_0_0/src/v_demosaic.cpp" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

