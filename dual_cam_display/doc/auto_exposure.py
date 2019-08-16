#!/usr/bin/env python
#
import time
import math
from smbus import SMBus


slaveaddr=0x36
av_lum_addr = 0x5693

exposure_addr_0 = 0x3500
exposure_addr_1 = 0x3501
exposure_addr_2 = 0x3502

default_exposure = 24576

smb = SMBus(0)

def get_av_lum(smb):
	set_current_address(smb,av_lum_addr)
	return smb.read_byte(slaveaddr)

def set_exposure(smb, exposure):
	exp_HH = (exposure>>16)%256
	# print(exp_HH)
	exp_H = (exposure>>8)%256
	# print(exp_H)
	exp_L = (exposure)%256
	# print(exp_L)
	write_block(smb,exposure_addr_0,[exp_HH])
	write_block(smb,exposure_addr_1,[exp_H])
	write_block(smb,exposure_addr_2,[exp_L])
	

def get_exposure(smb):
	set_current_address(smb,exposure_addr_0)
	exp_HH = smb.read_byte(slaveaddr)
	# print(exp_HH)
	set_current_address(smb,exposure_addr_1)
	exp_H = smb.read_byte(slaveaddr)
	# print(exp_H)
	set_current_address(smb,exposure_addr_2)
	exp_L= smb.read_byte(slaveaddr)
	# print(exp_L)
	exposure = exp_HH*256*256+exp_H*256+exp_L
	return exposure


def write_block(smb,addr,data):
    a1=addr>>8
    a0=addr%256
    data.insert(0,a0);
    smb.write_i2c_block_data(slaveaddr,a1,data)
    time.sleep(0.001)
    # wait until acknowledged
    check_ready(smb)

def set_current_address(smb,addr):
	a1=addr>>8
	a0=addr%256
	smb.write_i2c_block_data(slaveaddr,a1,[a0])

def check_ready(smb):
    # wait until acknowledged
    ready=0
    while not ready:
        try:
            smb.read_byte(slaveaddr)
            ready=1
        except IOError:
            print('not ready')
            ready=0

def set_spot_exposure(smb):
	commands = [
	(0x5680,0x04), # start_x [12:8]
	(0x5681,0xdc),
	(0x5682,0x02),
	(0x5683,0x94),
	(0x5684,0x00),
	(0x5685,0xc8),
	(0x5686,0x00),
	(0x5687,0xc8)]
	for s in commands:
		write_block(smb,s[0],[s[1]])
	print("Set exposure mode to 'Spot'")

def set_full_exposure(smb):
	commands = [
	(0x5680,0x00), # start_x [12:8]
	(0x5681,0x00),
	(0x5682,0x00),
	(0x5683,0x00),
	(0x5684,0x11),
	(0x5685,0x00),
	(0x5686,0x09),
	(0x5687,0xa0)]
	for s in commands:
		write_block(smb,s[0],[s[1]])
	print("Set exposure mode to 'Full'")



def auto_exposure(smb):
	wanted_lum = 128
	print("running")
	while True:
		try:
			lum = get_av_lum(smb)
			if lum != wanted_lum and lum!=0:
				
				exposure = get_exposure(smb)
				delta_lum = wanted_lum - lum
				delta_exposure = delta_lum * 50
				new_exposure = exposure + delta_exposure
				set_exposure(smb,new_exposure)
				# print("luminance is ",lum,"\t\texposure set to",exposure>>4)
		except Exception as e:
			print("oei oei")
		# else:
		# 	print("\rluminance is",lum, end='')
		# print("new exposure is ",new_exposure)
		time.sleep(0.05)

set_spot_exposure(smb)
auto_exposure(smb)

