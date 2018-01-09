#!/bin/sh
#set power limit to 130W for all cards
sudo nvidia-smi --power-limit=130

#enable fan controll for first card
sudo nvidia-settings -a [gpu:0]/GPUFanControlState=1

#set fan speed 80% for first card
sudo nvidia-settings -a [fan:0]/GPUTargetFanSpeed=80

#set +800 memory for first card
nvidia-settings -a [gpu:0]/GPUMemoryTransferRateOffset[2]=700
nvidia-settings -a [gpu:0]/GPUMemoryTransferRateOffset[3]=700

#set GPU clockOffset
nvidia-settings -a [gpu:0]/GPUGraphicsClockOffset[2]=100
nvidia-settings -a [gpu:0]/GPUGraphicsClockOffset[3]=100
