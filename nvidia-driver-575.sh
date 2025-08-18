#!/bin/sh

### For Alita ###

# Remove: xserver-xorg-video-nouveau
sudo apt purge xserver-xorg-video-nouveau

# sudo ubuntu-drivers devices
# 1. Scans your system’s hardware
# 2. Lists available drivers for each device (e.g., NVIDIA, AMD, Broadcom Wi-Fi).
# 3. Shows the recommended driver according to Ubuntu’s package database:
#    driver : nvidia-driver-575 - distro non-free recommended

# nvidia-driver-575 - NVIDIA driver metapackage
sudo apt install nvidia-driver-575

# Reboot: 
sudo reboot




