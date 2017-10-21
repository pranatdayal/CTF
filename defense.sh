#!/bin/bash
# Script to setup defense
red='\033[0;31m'
green='\033[0;32m'
nc='\033[0m'

echo -e "${green}[*] Setting up Defense${nc}"


#install and setup labrea tarpit to detect rogue scanning
echo -e "${green}[*] Installing Labrea taprit${nc}"
apt-get install labrea
if [ -x "$(command -v labrea)" ]
then
    echo -e "${green}[+] Done! - labrea installed${nc}"
else
    echo -e "${red}Could not install labrea${nc}"
fi
function runlabrea()
{
    labrea -s -o -b -v -i eth0 2>&1| tee -a log.txt

}
#install linux malware detector
echo -e "${green}[*] Installing linux malware detector${nc}"
function lmd()
{
    wget http://www.rfxn.com/downloads/maldetect-current.tar.gz
    tar xfz maldetect-current.tar.gz
    cd maldetect-*
    if /bin/bash install.sh
    then
        echo -e "${green}[+] Done! - linux malware detector installed${nc}"
    else
        echo -e "${red}Couldnt not install linux malware detector${nc}"
    fi
}

lmd

#clone defensive scripts from github
echo -e "${green}[*] Downloading defense scripts from github${nc}"
git clone https://github.com/pranatdayal/IRSEC_scripts.git
echo -e "${green}[+] Done!- IRSEC_scripts directory created${nc}"

echo " "

echo -e "${green}[+] Defense is up! Good luck !${nc}"
echo "\n"

echo -e "${green}[+] Running labrea tarpit now${nc}"

runlabrea



