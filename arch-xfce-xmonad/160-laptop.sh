#!/bin/bash
#set -e
##################################################################################################################
#.           ..         .           .       .           .           .
#       .         .            .          .       .
#             .         ..xxxxxxxxxx....               .       .             .
#     .             MWMWMWWMWMWMWMWMWMWMWMWMW                       .
#               IIIIMWMWMWMWMWMWMWMWMWMWMWMWMWMttii:        .           .
#  .      IIYVVXMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWxx...         .           .
#      IWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMx..
#    IIWMWMWMWMWMWMWMWMWBY%ZACH%AND%OWENMWMWMWMWMWMWMWMWMWMWMWMWMx..        .
#     ""MWMWMWMWMWM"""""""".  .:..   ."""""MWMWMWMWMWMWMWMWMWMWMWMWMWti.
#  .     ""   . `  .: . :. : .  . :.  .  . . .  """"MWMWMWMWMWMWMWMWMWMWMWMWMti=
#         . .   :` . :   .  .'.' '....xxxxx...,'. '   ' ."""YWMWMWMWMWMWMWMWMWMW+
#      ; . ` .  . : . .' :  . ..XXXXXXXXXXXXXXXXXXXXx.    `     . "YWMWMWMWMWMWMW
# .    .  .  .    . .   .  ..XXXXXXXXWWWWWWWWWWWWWWWWXXXX.  .     .     """""""
#         ' :  : . : .  ...XXXXXWWW"   W88N88@888888WWWWWXX.   .   .       . .
#    . ' .    . :   ...XXXXXXWWW"    M88N88GGGGGG888^8M "WMBX.          .   ..  :
#          :     ..XXXXXXXXWWW"     M88888WWRWWWMW8oo88M   WWMX.     .    :    .
#            "XXXXXXXXXXXXWW"       WN8888WWWWW  W8@@@8M    BMBRX.         .  : :
#   .       XXXXXXXX=MMWW":  .      W8N888WWWWWWWW88888W      XRBRXX.  .       .
#      ....  ""XXXXXMM::::. .        W8@889WWWWWM8@8N8W      . . :RRXx.    .
#          ``...'''  MMM::.:.  .      W888N89999888@8W      . . ::::"RXV    .  :
#  .       ..'''''      MMMm::.  .      WW888N88888WW     .  . mmMMMMMRXx
#       ..' .            ""MMmm .  .       WWWWWWW   . :. :,miMM"""  : ""`    .
#    .                .       ""MMMMmm . .  .  .   ._,mMMMM"""  :  ' .  :
#                .                  ""MMMMMMMMMMMMM""" .  : . '   .        .
#           .              .     .    .                      .         .
# .

# Author	:	wuodan aka sudhanshu selvan
# Version	:	v2.0.1
# Date	        :	22-12-24
# Description	:	To install packages for portable machines
# Usage	        :	chmod +x <filename> or chmod 777 <filename> followed by ./<filename>

##################################################################################################################
#   DO NOT RUN THIS WITHOUT KNOWING WHAT IT EXECUTES. RUN AT YOUR OWN RISK.
##################################################################################################################

##################################################################################################################
####################################
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
###################################

##################################################################################################################
#
#   DECLARATION OF FUNCTIONS
#
#################################################################################################################


func_install() {
	if pacman -Qi $1 &> /dev/null; then
		tput setaf 2
  		echo "###############################################################################"
  		echo "################## The package "$1" is already installed"
      	echo "###############################################################################"
      	echo
		tput sgr0
	else
    	tput setaf 3
    	echo "###############################################################################"
    	echo "##################  Installing package "  $1
    	echo "###############################################################################"
    	echo
    	tput sgr0
    	sudo pacman -S --noconfirm --needed $1 
    fi
}

###############################################################################
echo "Installation of laptop software"
###############################################################################

list=(
tlp
ntp
)

count=0

for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package no."$count" "$name;tput sgr0;
	func_install $name
done

###############################################################################

tput setaf 5;echo "################################################################"
echo "Enabling services"
echo "################################################################"
echo;tput sgr0

sudo systemctl enable --now tlp.service
sudo systemctl enable --now ntpd.service

tput setaf 11;
echo "################################################################"
echo "Software has been installed"
echo "################################################################"
echo;tput sgr0
