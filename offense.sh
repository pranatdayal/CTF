#!/bin/bash
red='\033[0;31m'
green='\033[0;32m'
nc='\033[0m'

echo -e "${red}Setting up offense${nc}"

# download and install git
if ! [ -x "$(command -v git)" ]
then
    echo -e "${red}[*]Installing GIT${nc}"
    apt-get install git
    echo -e "${green}[+]Done!${nc}"
else
    echo -e "${green}[+] GIT already installed${nc}"
    git --version
fi
# download linuxprivchecker
echo -e "${red}[*]Downloading Linux priv checker${nc}"
git clone https://github.com/sleventyeleven/linuxprivchecker.git
echo -e "${green}[+]Done!${nc}"
# download python-pty-shells
echo -e "${red}[*]Downloading python pty shells${nc}"
git clone https://github.com/pranatdayal/python-pty-shells
echo -e "${green}[+]Done!${nc}"

# download backdoor-factory
echo -e "${red}[*]Downloading backdoor-factory${nc}"
git clone  https://github.com/secretsquirrel/the-backdoor-factory.git
echo -e "${green}[+]Done!${nc}"

# download routersploit
echo -e "${red}[*]Downloading routersploit${nc}"
git clone http://github.com/reverse-shell/routersploit
echo -e "${green}[+]Done!${nc}"

echo " "
echo -e "${green}[+] Offense setup complete"
