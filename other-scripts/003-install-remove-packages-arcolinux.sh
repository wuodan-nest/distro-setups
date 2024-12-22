#!/bin/bash
#set -e
##################################################################################################################
# Author: Sudhanshu Selvan
# version: v1.0.3
# Date: 20-10-22
# Description: To remove default packages that come with arcolinux.
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
echo "########## Packages to remove from arcolinux"
echo "################################################################"
tput sgr0
echo

# Syncs, refreshes all packages, downloads a fresh copy and performs a system upgrade.
sudo pacman -Syyu --noconfirm --needed
sudo yay -Syyu --noconfirm --needed

# List of packages to be removed with the script
#sudo pacman -Rncs --noconfirm thunar
sudo pacman -Rncs --noconfirm file-roller
#sudo pacman -Rncs --noconfirm blueberry
sudo pacman -Rncs --noconfirm gnome-disk-utility
sudo pacman -Rncs --noconfirm firefox

#sudo pacman -Rncs --noconfirm gparted
#sudo pacman -Rncs --noconfirm grub-customizer
#sudo pacman -Rncs --noconfirm mousepad
sudo pacman -Rncs --noconfirm xfce4-notes-plugin
#sudo pacman -Rncs --noconfirm parole
#sudo pacman -Rncs --noconfirm ristretto
sudo pacman -Rncs --noconfirm termite
#sudo pacman -Rncs --noconfirm rxvt-unicode
sudo pacman -Rncs --noconfirm xfburn
sudo pacman -Rncs --noconfirm xfce4-terminal
sudo pacman -Rncs --noconfirm variety
sudo pacman -Rncs --noconfirm xfce4-clipman-plugin

# Prints the title of the executed script.
echo
tput setaf 2
echo "################################################################"
echo "########## Packages to install to arcolinux"
echo "################################################################"
tput sgr0
echo

# List of packages to be installed with the script
sudo pacman -S --noconfirm --needed obsidian
sudo pacman -S --noconfirm --needed brave-bin
sudo pacman -S --noconfirm --needed feh
sudo pacman -S --noconfirm --needed xclip
sudo pacman -S --noconfirm --needed openssh
#sudo pacman -S --noconfirm --needed pcmanfm
sudo pacman -S --noconfirm --needed alacritty
sudo pacman -S --noconfirm --needed vlc
sudo pacman -S --noconfirm --needed kdeconnect
sudo pacman -S --noconfirm --needed pass
sudo pacman -S --noconfirm --needed brightnessctl
sudo pacman -S --noconfirm --needed blender
sudo pacman -S --noconfirm --needed krita
sudo pacman -S --noconfirm --needed inkscape
sudo pacman -S --noconfirm --needed gimp
sudo pacman -S --noconfirm --needed socat
sudo pacman -S --noconfirm --needed etcher-bin
sudo pacman -S --noconfirm --needed thunderbird
sudo pacman -S --noconfirm --needed scribus
sudo pacman -S --noconfirm --needed godot
sudo pacman -S --noconfirm --needed etcher-bin
sudo pacman -S --noconfirm --needed xfce4-appfinder
sudo pacman -S --noconfirm --needed yt-dlp
sudo pacman -S --noconfirm --needed bluez
sudo pacman -S --noconfirm --needed bluez-libs
sudo pacman -S --noconfirm --needed bluez-tools
sudo pacman -S --noconfirm --needed ristretto
sudo pacman -S --noconfirm --needed pipewire
sudo pacman -S --noconfirm --needed pipewire-pulse
sudo pacman -S --noconfirm --needed rtorrent
