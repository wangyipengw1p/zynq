#! /bin/bash
#ghdl -a --work=unisim --ieee=synopsys /home/achiel/Xilinx/Vivado/2016.4/data/vhdl/src/unisims/unisim_VCOMP.vhd
#ghdl -a --work=unisim --ieee=synopsys /home/achiel/Xilinx/Vivado/2016.4/data/vhdl/src/unisims/unisim_VPKG.vhd
ghdl -i --work=unisim /home/achiel/Xilinx/Vivado/2016.4/data/vhdl/src/unisims/*.vhd
ghdl -i --work=unisim /home/achiel/Xilinx/Vivado/2016.4/data/vhdl/src/unisims/primitive/*.vhd

ghdl -i --work=work --ieee=synopsys --std=02 *.vhd
echo 1
ghdl -a --work=work --ieee=synopsys --std=02 csv_file_reader_pkg.vhd
echo 1.5
ghdl -a --work=work --ieee=synopsys --std=02 lane_align.vhd
ghdl -e --work=work --ieee=synopsys --std=02 lane_align
echo 2
ghdl -a --work=work --ieee=synopsys --std=02 csi2_parser.vhd
ghdl -e --work=work --ieee=synopsys --std=02 csi2_parser
echo 3
ghdl -a --work=work --ieee=synopsys --std=02 lane_merge.vhd
ghdl -e --work=work --ieee=synopsys --std=02 lane_merge
echo 4
ghdl -a --work=work --ieee=synopsys --std=02 csi_to_axis_v1_0.vhd
echo 4.5
ghdl -e --work=work --ieee=synopsys --std=02 csi_to_axis_v1_0
echo 5
ghdl -a --work=work --ieee=synopsys --std=02 csi_to_axis_v1_0_tb.vhd
ghdl -e --work=work --ieee=synopsys --std=02 csi_to_axis_v1_0_tb
echo 6
ghdl -r --work=work --ieee=synopsys --std=02 csi_to_axis_v1_0_tb --wave=csi_to_axis_v1_0_tb.ghw --stop-time=4100ns