#!/bin/bash
# Start Luma 128 x 64 i2c display

cd /sys/class/gpio
echo 219 > export
cd gpio219
echo out > direction && echo 1 > value
sleep 1
echo out > direction && echo 0 > value
sleep 1
echo out > direction && echo 1 > value
cd /home/nvidia/git/luma_oled_jetson 
cmd="python mowbot.py --i2c-address 0x3d"
nohup $cmd &
#disown -h $cmd &
cd /home/nvidia

