vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/smartconnect_v1_0
vlib riviera/axi_protocol_checker_v2_0_3
vlib riviera/axi_vip_v1_1_3
vlib riviera/processing_system7_vip_v1_0_5
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_12
vlib riviera/xlslice_v1_0_1
vlib riviera/v_demosaic_v1_0_3
vlib riviera/xbip_utils_v3_0_9
vlib riviera/c_reg_fd_v12_0_5
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_pipe_v3_0_5
vlib riviera/xbip_dsp48_addsub_v3_0_5
vlib riviera/xbip_addsub_v3_0_5
vlib riviera/c_addsub_v12_0_12
vlib riviera/c_gate_bit_v12_0_5
vlib riviera/xbip_counter_v3_0_5
vlib riviera/c_counter_binary_v12_0_12
vlib riviera/lib_pkg_v1_0_2
vlib riviera/fifo_generator_v13_2_2
vlib riviera/lib_fifo_v1_0_11
vlib riviera/blk_mem_gen_v8_4_1
vlib riviera/lib_bmg_v1_0_10
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_datamover_v5_1_19
vlib riviera/axi_vdma_v6_3_5
vlib riviera/axis_infrastructure_v1_1_0
vlib riviera/axis_data_fifo_v1_1_18
vlib riviera/xlconstant_v1_1_5
vlib riviera/xlconcat_v2_1_1
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_17
vlib riviera/axi_data_fifo_v2_1_16
vlib riviera/axi_crossbar_v2_1_18
vlib riviera/axi_protocol_converter_v2_1_17

vmap xilinx_vip riviera/xilinx_vip
vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_3 riviera/axi_protocol_checker_v2_0_3
vmap axi_vip_v1_1_3 riviera/axi_vip_v1_1_3
vmap processing_system7_vip_v1_0_5 riviera/processing_system7_vip_v1_0_5
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 riviera/proc_sys_reset_v5_0_12
vmap xlslice_v1_0_1 riviera/xlslice_v1_0_1
vmap v_demosaic_v1_0_3 riviera/v_demosaic_v1_0_3
vmap xbip_utils_v3_0_9 riviera/xbip_utils_v3_0_9
vmap c_reg_fd_v12_0_5 riviera/c_reg_fd_v12_0_5
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_5 riviera/xbip_pipe_v3_0_5
vmap xbip_dsp48_addsub_v3_0_5 riviera/xbip_dsp48_addsub_v3_0_5
vmap xbip_addsub_v3_0_5 riviera/xbip_addsub_v3_0_5
vmap c_addsub_v12_0_12 riviera/c_addsub_v12_0_12
vmap c_gate_bit_v12_0_5 riviera/c_gate_bit_v12_0_5
vmap xbip_counter_v3_0_5 riviera/xbip_counter_v3_0_5
vmap c_counter_binary_v12_0_12 riviera/c_counter_binary_v12_0_12
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_2 riviera/fifo_generator_v13_2_2
vmap lib_fifo_v1_0_11 riviera/lib_fifo_v1_0_11
vmap blk_mem_gen_v8_4_1 riviera/blk_mem_gen_v8_4_1
vmap lib_bmg_v1_0_10 riviera/lib_bmg_v1_0_10
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_19 riviera/axi_datamover_v5_1_19
vmap axi_vdma_v6_3_5 riviera/axi_vdma_v6_3_5
vmap axis_infrastructure_v1_1_0 riviera/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v1_1_18 riviera/axis_data_fifo_v1_1_18
vmap xlconstant_v1_1_5 riviera/xlconstant_v1_1_5
vmap xlconcat_v2_1_1 riviera/xlconcat_v2_1_1
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_17 riviera/axi_register_slice_v2_1_17
vmap axi_data_fifo_v2_1_16 riviera/axi_data_fifo_v2_1_16
vmap axi_crossbar_v2_1_18 riviera/axi_crossbar_v2_1_18
vmap axi_protocol_converter_v2_1_17 riviera/axi_protocol_converter_v2_1_17

vlog -work xilinx_vip  -sv2k12 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_3  -sv2k12 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/03a9/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_3  -sv2k12 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b9a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_5  -sv2k12 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_0/sim/design_1_proc_sys_reset_0_0.vhd" \

vlog -work xlslice_v1_0_1  -v2k5 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlslice_0_1/sim/design_1_xlslice_0_1.v" \

vlog -work v_demosaic_v1_0_3  -v2k5 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ip/design_1_v_demosaic_0_1/hdl/v_demosaic_v1_0_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_1/sim/design_1_v_demosaic_0_1.v" \

vcom -work xbip_utils_v3_0_9 -93 \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/a5f8/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_5 -93 \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/cbdd/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/da55/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_5 -93 \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/442e/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_5 -93 \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ad9e/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_5 -93 \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0e42/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_12 -93 \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/7f1a/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work c_gate_bit_v12_0_5 -93 \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/693f/hdl/c_gate_bit_v12_0_vh_rfs.vhd" \

vcom -work xbip_counter_v3_0_5 -93 \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0952/hdl/xbip_counter_v3_0_vh_rfs.vhd" \

vcom -work c_counter_binary_v12_0_12 -93 \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/c366/hdl/c_counter_binary_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_c_counter_binary_0_1/sim/design_1_c_counter_binary_0_1.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -93 \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_11 -93 \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/6078/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_1  -v2k5 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_10 -93 \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/9340/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_19 -93 \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec8a/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_5  -v2k5 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_5 -93 \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_vdma_0_1/sim/design_1_axi_vdma_0_1.vhd" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v1_1_18  -v2k5 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5738/hdl/axis_data_fifo_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axis_data_fifo_0_1/sim/design_1_axis_data_fifo_0_1.v" \

vcom -work xil_defaultlib -93 \
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

vlog -work xlconstant_v1_1_5  -v2k5 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/f1c3/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconstant_0_1/sim/design_1_xlconstant_0_1.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_0/sim/design_1_xlslice_0_0.v" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/sim/design_1_v_demosaic_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_c_counter_binary_0_0/sim/design_1_c_counter_binary_0_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_vdma_0_0/sim/design_1_axi_vdma_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axis_data_fifo_0_0/sim/design_1_axis_data_fifo_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_csi_to_axis_0_0/sim/design_1_csi_to_axis_0_0.vhd" \
"../../../bd/design_1/ip/design_1_csi2_d_phy_rx_0_0/sim/design_1_csi2_d_phy_rx_0_0.vhd" \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_1/sim/design_1_proc_sys_reset_0_1.vhd" \
"../../../bd/design_1/ip/design_1_axis_raw_unpack_0_0/sim/design_1_axis_raw_unpack_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \

vlog -work xlconcat_v2_1_1  -v2k5 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_17  -v2k5 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_16  -v2k5 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_18  -v2k5 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/15a3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_1/sim/design_1_xbar_1.v" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_17  -v2k5 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ccfb/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/b37e/hdl" "+incdir+../../../../dual_cam_display.srcs/sources_1/bd/design_1/ipshared/0ab1/hdl" "+incdir+/esat/micas-data/software/xilinx_vivado_2018.2/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/sim/design_1.vhd" \

 \
"../../../bd/design_1/ip/design_1_v_demosaic_0_1/src/v_demosaic.cpp" \
"../../../bd/design_1/ip/design_1_v_demosaic_0_0/src/v_demosaic.cpp" \

vlog -work xil_defaultlib \
"glbl.v"

