# simple client for testing the speed of transmittion

import socket
import time


if __name__ == '__main__':
	#######################
	IMG_W = 1920
	IMG_H = 1080
	max_udp_buf = IMG_W*4
	packet_num = IMG_H
	#######################


	framelen = IMG_H*IMG_W*3



	#The zedboard IP address

	addr = '10.88.19.18'
	port = 5001
	UDP = (addr, port)
	s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM) # STREAM 

	s.sendto(b'\x01\x01\x01', UDP)
	timeflag = time.time()
	
	while True:
		
		msg = s.recvfrom(max_udp_buf)[0]
		#print(msg)
		cam = msg[0]
		frameid = msg[1]
		index = (msg[2] << 16) + (msg[3] << 8) + (msg[4])
		#print(cam,frameid,index)
		if index == IMG_H:
			
			print(time.time() - timeflag)
			timeflag = time.time() 
			
		
