#!/bin/bash

# download and install git
if ! [ -x "$(command -v git)" ]
then
    echo "[*]Installing GIT"
    apt-get install git
    echo "[+]Done!"
else
    echo "[+] GIT already installed"
    git --version
fi
# download linuxprivchecker
echo "[*]Downloading Linux priv checker"
git clone https://github.com/sleventyeleven/linuxprivchecker.git
echo "[+]Done!"
# download python-pty-shells
echo "[*]Downloading python pty shells"
git clone https://github.com/pranatdayal/python-pty-shells
echo "[+]Done!"

# download backdoor-factory
echo "[*]Downloading backdoor-factory"
git clone  https://github.com/secretsquirrel/the-backdoor-factory.git
echo "[+]Done!"

# download routersploit
echo "[*]Downloading routersploit"
git clone http://github.com/reverse-shell/routersploit
echo "[+]Done"
