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
# version       :       v1.0.0
# Date          :       22-12-24
# Description   :       To generate ssh keys with openssh with user input.
# Usage         :       chmod +x <filename> or chmod 777 <filename> then ./<filename>
##################################################################################################################
# DO NOT RUN THIS WITHOUT KNOWING WHAT IT EXECUTES. RUN AT YOUR OWN RISK!
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
echo "################# Generating your SSH Keys!"
echo "################################################################"
tput sgr0
echo

# Will accept ssh-key type and user email input to generate ssh-key.
echo "Enter the ssh-key type below:"
read type
echo "Enter your email below:"
read email
ssh-keygen -t $type -C "$email"
