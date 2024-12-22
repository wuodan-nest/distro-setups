#!/bin/bash
#set -eb
##################################################################################################################
# Author: Sudhanshu Selvan
# version: v1.0.1
# Date: 20-10-22
# Description: To install commonly used webdev and note taking packages.
# Usage: chmod +x <filename> or chmod 777 <filename> then ./<filename>
##################################################################################################################
#
# DO NOT RUN THIS WITHOUT KNOWING WHAT IT EXECUTES. RUN AT YOUR OWN RISK!
#
##################################################################################################################
# will format the text printed on the terminal.
#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
##################################################################################################################

# Clears the terminal when the script is executed.
clear

# Prints the title of the executed script.
echo
tput setaf 2
echo "################################################################"
echo "########## Packages to install for Web Development"
echo "################################################################"
tput sgr0
echo

# Syncs, refreshes all packages, downloads a fresh copy and performs a system upgrade.
sudo pacman -Syyu --noconfirm --needed
sudo yay -Syyu --noconfirm --needed

# List of packages to be installed with the script
sudo pacman -S --noconfirm --needed emacs
#sudo pacman -S --noconfirm --needed code
sudo pacman -S --noconfirm --needed google-chrome
sudo pacman -S --noconfirm --needed openssh
sudo pacman -S --noconfirm --needed git
