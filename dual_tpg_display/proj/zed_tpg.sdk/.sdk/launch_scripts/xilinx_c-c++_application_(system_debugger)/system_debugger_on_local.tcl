connect -url tcp:127.0.0.1:3121
source /users/micasgst/ywang/Desktop/zed_proj/copy_zed_tpg/zed_tpg.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS3 210299A88861"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS3 210299A88861" && level==0} -index 1
fpga -file /users/micasgst/ywang/Desktop/zed_proj/copy_zed_tpg/zed_tpg.runs/impl_1/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS3 210299A88861"} -index 0
loadhw -hw /users/micasgst/ywang/Desktop/zed_proj/copy_zed_tpg/zed_tpg.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS3 210299A88861"} -index 0
ps7_init
ps7_post_config
configparams force-mem-access 0
bpadd -addr &main
