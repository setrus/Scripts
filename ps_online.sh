#!/bin/bash
#This is intended to check if a nmap scan has finished scannning.
#Nmap is runnning on a server. Status of the scan can be easily checked and posted on a request.bin server.
#Although the exfiltration can be done on which ever site

### Start ###
echo "[+] Running Script:"
ps ax | grep nmap > process
sed -i '$d' process
data=`date`
if [ -f process ]
then
    if [ -s process ]
    then
       # echo " Scanning"
        echo `tput setaf 1`HELLO`tput sgr0`
        
        curl -X POST -d "[$data] Scanning in Progress " http://requestbin.net/r/1d982901
    else
       
        curl -X POST -d "[$data] Scanning DONE " http://requestbin.net/r/1d982901
    fi
else
    echo "File not exists"
fi
#curl -X POST -d "Scanning in Progress" http://requestbin.fullcontact.com/1bq07c51
