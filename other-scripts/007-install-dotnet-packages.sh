d#!/bin/bash
#set -e
##################################################################################################################
# Author: Sudhanshu Selvan
# version: v1.0.1
# Date: 20-01-23
# Description: To install dotnet-runtime and dotnet-sdk packages.
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
echo "########## Packages to install for steam launcher"
echo "################################################################"
tput sgr0
echo

# Syncs, refreshes all packages, downloads a fresh copy and performs a system upgrade.
sudo pacman -Syyu --noconfirm --needed
yay -Syyu --noconfirm --needed

##################################################################################################################
#
#   DECLARATION OF FUNCTIONS
#
#################################################################################################################

func_install() {
	if pacman -Qi $1 &> /dev/null; then
		tput setaf 2
		echo "##################################################################################################################"
  		echo "################## The package "$1" is already installed"
      	echo "##################################################################################################################"
      	echo
		tput sgr0
	else
    	tput setaf 3
    	echo
		echo "##################################################################################################################"
    	echo "################## Installing package "  $1
    	echo "##################################################################################################################"
    	echo
    	tput sgr0
    	sudo pacman -S --noconfirm --needed $1
    fi
}

##################################################################################################################
echo "Installation of the core software"
##################################################################################################################

list=(
dotnet-runtime
dotnet-sdk
code
)

count=0

for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package no."$count" "$name;tput sgr0;
	func_install $name
done

##################################################################################################################

tput setaf 11;
echo "################################################################"
echo "Your system is ready for dotnet development!"
echo "################################################################"
echo;tput sgr0
