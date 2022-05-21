#!/bin/sh

GPUMODEL=$(sudo glxinfo | grep 'OpenGL vendor string:' | cut -d ":" -f2)


if [ "$GPUMODEL" = " AMD" ];then
     sudo pacman -S xf86-video-amdgpu

elif [ "$GPUMODEL" = " Intel Open Source Technology Center" ];then
     sudo pacman -S xf86-video-intel

elif [ "$GPUMODEL" = " NVIDIA Corporation" ];then
     sudo pacman -S xf86-video-nouveau
fi

