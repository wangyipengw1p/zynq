import socket
import pygame
import threading
import numpy as np

# simple client for displaying the video
#-------------
# the performance of pygame is not enough for smooth video
#----------------------
#* protcal
#
#Receiving x"010101"(char[3]), zynq will start sending video data to the remote host.
#
#receiving x"010100"(char[3]), zynq will stop sending video data.
#
#Every tx UDP packet contains 5 byte header(which img[0], the identity of the frame[1], 
#UDP packet num in a frame[2,3,4]) and one row of data.
#
#identity is in range 1-4 for different frames of one video steam. used for client for the 
#sorting of UDP packet
#----------------------

def screen_update(cam, img, ind,image):
	buf = b''
	points=zip(ind,img)
	points = sorted(points)
	for i in range(len(points)):
		buf += points[i][1]
	#print(len(buf))
	if cam == 1:
		image = buf + image[framelen:]
	else :
		image =image[0:framelen] + buf 
	imgobj=pygame.image.frombuffer(image,(IMG_W,IMG_H*2),"RGB")
	screen.blit(imgobj,(0,0))
	pygame.display.update()
	return image



if __name__ == '__main__':
#########################
	IMG_W = 800
	IMG_H = 600

	# MAX udp buffer size for a udp packet
	# Typically slightly larger than  the data transmitting
	# The unit is byte
	max_udp_buf = IMG_W*31
	# packet num per frame, this should be changed according to max_udp_buf
	packet_num = IMG_H/10
#########################


	framelen = IMG_H*IMG_W*3



	#The zedboard IP address

	addr = '10.88.19.18'
	port = 5001
	UDP = (addr, port)
	image = bytes(2*framelen)
	s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM) # STREAM 

	s.sendto(b'\x01\x01\x01', UDP)
	screen = pygame.display.set_mode((IMG_W,IMG_H*2))
	img11 = []
	img12 = []
	img13 = []
	img14 = []

	img21 = []
	img22 = []
	img23 = []
	img24 = []

	ind11 = []
	ind12 = []
	ind13 = []
	ind14 = []

	ind21 = []
	ind22 = []
	ind23 = []
	ind24 = []
	
	while True:
		msg = s.recvfrom(max_udp_buf)[0]
		#print(msg)
		cam = msg[0]
		frameid = msg[1]
		index = (msg[2] << 16) + (msg[3] << 8) + (msg[4])
		print(cam,frameid,index)
		if (cam == b'\x00') | (cam==0):
			if (frameid == b'\x01') | (frameid == 1):
				img11.append(msg[5:])
				ind11.append(index)
			elif (frameid == b'\x02') | (frameid == 2):
				img12.append(msg[5:])
				ind12.append(index)
			elif (frameid == b'\x03') | (frameid == 3):
				img13.append(msg[5:])
				ind13.append(index)
			elif (frameid == b'\x04') | (frameid == 4):
				img14.append(msg[5:])
				ind14.append(index)			
		else:
			if (frameid == b'\x01') | (frameid == 1):
				img21.append(msg[5:])
				ind21.append(index)
			elif (frameid == b'\x02') | (frameid == 2):
				img22.append(msg[5:])
				ind22.append(index)
			elif (frameid == b'\x03') | (frameid == 3):
				img23.append(msg[5:])
				ind23.append(index)
			elif (frameid == b'\x04') | (frameid == 4):
				img24.append(msg[5:])
				ind24.append(index)
		if len(ind11) == packet_num:
			image = screen_update(1,img11, ind11,image)
			img13 = []
			ind13 = []
		elif len(ind12) == packet_num:
			image = screen_update(1,img12, ind12,image)
			img14 = []
			ind14 = []
		elif len(ind13) == packet_num:
			image = screen_update(1,img13, ind13,image)
			img11 = []
			ind11 = []
		elif len(ind14) == packet_num:
			image = screen_update(1,img14, ind14,image)
			img12 = []
			ind12 = []

		if len(ind21) == packet_num:
			image = screen_update(2,img21, ind21,image)
			img23 = []
			ind23 = []
		elif len(ind22) == packet_num:
			image = screen_update(2,img22, ind22,image)
			img24 = []
			ind24 = []
		elif len(ind23) == packet_num:
			image = screen_update(2,img23, ind23,image)
			img21 = []
			ind21 = []
		elif len(ind24) == packet_num:
			image = screen_update(2,img24, ind24,image)
			img22 = []
			ind22 = []

		




