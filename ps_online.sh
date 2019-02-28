#!/bin/bash
#This is intended to chech if a nmap scan has finished.
#Running nmap on the host and posting information to request bin
#This information can be uploaded anywhere.
#For the time beeing the information is uploaded to request bin.

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