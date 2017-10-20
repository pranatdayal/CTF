#!/bin/bash
# Script to setup defense

echo "[*] Setting up Defense"


#install and setup labrea tarpit to detect rogue scanning
echo "[*] Installing Labrea taprit"
apt-get install labrea
if [ -x "$(command -v labrea)" ]
then
    echo "[+] Done! - labrea installed"
else
    echo "Could not install labrea"
fi
function runlabrea()
{
    labrea -z -s -o -b -v -i eth0 2>&1| tee -a log.txt

}
#install linux malware detector
echo "[*] Installing linux malware detector"
function lmd()
{
    wget http://www.rfxn.com/downloads/maldetect-current.tar.gz
    tar xfz maldetect-current.tar.gz
    cd maldetect-*
    if /bin/bash install.sh
    then
        echo "[+] Done! - linux malware detector installed"
    else
        echo "Couldnt not install linux malware detector"
}

lmd
runlabrea



