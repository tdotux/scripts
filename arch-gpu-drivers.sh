#!/bin/bash


if [  $(lspci | grep -c Radeon) = 1 ]; then
sudo pacman -S xf86-video-amdgpu xf86-video-ati

elif [  $(lspci | grep -c Intel) = 1 ]; then
sudo pacman -S xf86-video-intel

elif [  $(lspci | grep -c GeForce) = 1 ]; then
sudo pacman -S xf86-video-nouveau

elif [  $(lspci | grep -c VMware) = 1 ]; then
sudo pacman -S xf86-video-vmware

fi