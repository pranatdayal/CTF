# Useful scripts for ctf competition 
# pranatdayal 

offense.sh:
-----------

Setup script to initialize tools for offense. (tools not natively present in kali) 

Downloads the following: 
	
	- linuxprivchecker.py 
	- python-pty-shells
	- the-backdoor-factory
	- routersploit 


defense.sh:
-----------
setup script to initialize tools for defense. 

Downloads and installs the following:

	- Labrea tarpit 
	- Linux malware detector 
	- IRSEC_scripts repo


shocker.sh:
-----------

proof of concept exploit for apache mod_cgi shellshock vulnerability. 

	Usage: 
		./shocker.sh targeturl/cgi-bin/admin.cgi 


