#! /bin/bash
#ghdl -a --work=unisim --ieee=synopsys /home/achiel/Xilinx/Vivado/2016.4/data/vhdl/src/unisims/unisim_VCOMP.vhd
#ghdl -a --work=unisim --ieee=synopsys /home/achiel/Xilinx/Vivado/2016.4/data/vhdl/src/unisims/unisim_VPKG.vhd
ghdl -i --work=unisim /home/achiel/Xilinx/Vivado/2016.4/data/vhdl/src/unisims/*.vhd
ghdl -i --work=unisim /home/achiel/Xilinx/Vivado/2016.4/data/vhdl/src/unisims/primitive/*.vhd

echo 1
ghdl -a --work=work --ieee=synopsys --std=02 axis_raw_unpack_v1_0.vhd
ghdl -e --work=work --ieee=synopsys --std=02 axis_raw_unpack_v1_0
echo 5
ghdl -a --work=work --ieee=synopsys --std=02 axis_raw_unpack_v1_0_tb.vhd
ghdl -e --work=work --ieee=synopsys --std=02 axis_raw_unpack_v1_0_tb
echo 6
ghdl -r --work=work --ieee=synopsys --std=02 axis_raw_unpack_v1_0_tb --wave=axis_raw_unpack_v1_0_tb.ghw --stop-time=200ns