#!/bin/bash

endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"


function ctrl_c (){
	echo -ne "${redColour}[!]Saliendo...${endColour}"
	tput cnorm
	exit 1
}
trap ctrl_c INT

#variables 
host=127.0.0.1

echo -ne "\t${grayColour}Scanning all ports\n${endColour}"

tput civis
for i in $(seq 1 65535); do
(echo '' > /dev/tcp/$host/$i) 2>/dev/null && echo -e "${yellowColour}The port \"$i\" is open${endColour} "
done
tput cnorm



#case


#esac
