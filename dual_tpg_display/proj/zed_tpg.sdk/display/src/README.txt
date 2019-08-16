dule-img display demo
--------------------
This project generates videos in FPGA by Video test pattern generator, use
VDMA to write to DDR, and then video data is read from the CPU side, which 
is then stream to ethernet using UDP(lwip).
--------------------
# file discription

display_demo.h contains some user defined parameters, check before running.

The main application is in main.c, which also contains init function for tpg 
and VDMA, call back funcion for VDMA frame counter interruption.

udp_server.c contains the init function for ethernet part, receive callback 
function and a function for transferring video data.

vdma.c contains APIs for controling VDMA

zynq_interrupt.c contains APIS for interruption.

Other file may not be intersting
---------------------
# v_tpg

The max frame size has set to 1920*1080 in hardware

For reconfiguring the tpg pattern, referring the init_pkg function and the
library(APIs): xv_tpg.h

Please check the documentation for detailed function discriptions (google 
"xilinx tpg" and check for the register space defination) and required function 
call sequence.
----------------------
# VDMA

Only S2MM channel is enabled, which is for writing to DDR. Tripple buffer is set. 
The init_VDMA function does the initialization accordingly.

This design doesn't use AXI interrupt controller.

Frame counter will generate interrupt every frame.

please referring the the example design on system.mms page in bsp.
----------------------
# Ethernet(lwip)

Make sure that lwip 2.0.2 is enabled in bsp setting.
(in previous version of lwip, ip_addr is a struct, but in this version a pointer)

If there're errors concerning alloc fail, please try larger value for such as pbuf_size
pbuf_pool_size. (also in bsp setting)

DHCP is enabled, if failed or time out, will use static ip address set in main.c
(mac address settings is in main())

Please call "xemacif_input(netif);" from time to time, for example put it in a loop, which 
will check for received data and call interrupt.(note that it's interrput on CPU side, not IRQ
from PL)
----------------------
* protcal

Receiving x"010101"(char[3]), zynq will start sending video data to the remote host.

receiving x"010100"(char[3]), zynq will stop sending video data.

Every tx UDP packet contains 5 byte header(which img[0], the identity of the frame[1], 
UDP packet num in a frame[2,3,4]) and one row of data.

identity is in range 1-4 for different frames of one video steam. used for client for the 
sorting of UDP packet
----------------------
# client on host

There are example python socket implementation in this project. The test receive bandwidth is 
450-500 Mb/s. This is likely a limit from python package. Showing pictures on pygame also cause
a huge latency, which is not recommand.
