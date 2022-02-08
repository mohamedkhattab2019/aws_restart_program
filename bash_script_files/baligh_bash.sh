#!/bin/bash
# echo "kindlly Enter user name "
# read name
# grep "$name" /etc/passwd
# if [ $? -eq 0 ]
# then
# echo "user exist "
# ./baligh_bash.sh
# else
# echo "kindlly Enter password "
# read -s password
# sudo useradd  $name -p $password   
# echo "congruts user $name is created"
# fi

# from csv
for rowdata in `cat data.csv`
do

#############1
username=`echo $rowdata|cut -f1 -d','`
password=`echo $rowdata|cut -f2 -d','`
#########2
# eval $(<userdata.text)
# source userdata.text
grep "$username" /etc/passwd
if [ $? -eq 0 ]
then
echo "user exist "
else
echo "kindlly Enter password "
sudo useradd  $username -p $password   
echo "congruts user $username is created"
fi
done

