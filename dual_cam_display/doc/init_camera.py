#!/usr/bin/env python
#
import cameraI2C
import devmem
import devices
from smbus import SMBus

smb = SMBus(0)
smb1 = SMBus(1)
print('voor demosaic')
demosaic = devices.Demosaic(0x43C00000)
demosaic1 = devices.Demosaic(0x43C10000)
print('na demosaic')
#rgb2ycbcr = devices.RGB2YCBCR(0x43C10000)
#tpg = devices.TPG(0x43C20000)

#tpg.start()

print('na test pattern')

cameraI2C.init_cam(smb)

print('test in between')

cameraI2C.init_cam(smb1)

print('na init cam')

cameraI2C.load_preview(smb)
cameraI2C.load_preview(smb1)

print('na load preview')

#rgb2ycbcr.start()

demosaic.start()
demosaic1.start()

print('na demosaic start')
