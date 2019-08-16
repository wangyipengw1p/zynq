#! /bin/bash
# ghdl -a --work=unisim --ieee=synopsys /home/achiel/Xilinx/Vivado/2016.4/data/vhdl/src/unisims/unisim_VCOMP.vhd
# ghdl -a --work=unisim --ieee=synopsys /home/achiel/Xilinx/Vivado/2016.4/data/vhdl/src/unisims/unisim_VPKG.vhd
ghdl -i --work=unisim /home/achiel/Xilinx/Vivado/2016.4/data/vhdl/src/unisims/*.vhd
ghdl -i --work=unisim /home/achiel/Xilinx/Vivado/2016.4/data/vhdl/src/unisims/primitive/*.vhd

ghdl -i --work=work --ieee=synopsys --std=02 *.vhd
echo 1
ghdl -a --work=work --ieee=synopsys --std=02 phy_clock_system.vhd
ghdl -e --work=work --ieee=synopsys --std=02 phy_clock_system
echo 2
ghdl -a --work=work --ieee=synopsys --std=02 line_if.vhd
ghdl -e --work=work --ieee=synopsys --std=02 line_if
echo 3
ghdl -a --work=work --ieee=synopsys --std=02 csi2_d_phy_rx.vhd
ghdl -e --work=work --ieee=synopsys --std=02 csi2_d_phy_rx
echo 4
# ghdl -a --work=work --ieee=synopsys --std=02 csi_to_axis_v1_0.vhd
# echo 4.5
# ghdl -e --work=work --ieee=synopsys --std=02 csi_to_axis_v1_0
# echo 5
# ghdl -a --work=work --ieee=synopsys --std=02 csi_to_axis_v1_0_tb.vhd
# ghdl -e --work=work --ieee=synopsys --std=02 csi_to_axis_v1_0_tb
# echo 6
# ghdl -r --work=work --ieee=synopsys --std=02 csi_to_axis_v1_0_tb --wave=csi_to_axis_v1_0_tb.ghw --stop-time=4100ns