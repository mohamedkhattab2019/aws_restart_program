#!/bin/bash
read username
found=`cut -d ':' -f1 /etc/passwd | grep "$username"`

if [ "$found" != "" ]
then
sudo ls -la /home/$found

 
fi

