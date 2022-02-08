#!/bin/bash
#!/user/bin/bash
#export LC_COLLATE=C
shopt -s extglob

function checkdatatype(){

case $1 in
+([a-zA-Z]) )  type='string';;
+([0-9]) ) type='decimal';;
+([a-zA-Z0-9]) ) type='nmixed';;
  (?) type='any other single character';;
esac

}

######First name read and check type ###########3
echo "Please enter a your first name: "
 read  fname
checkdatatype $fname
while [ $type != "string" ]
do
    echo "please insert only leters ! Try again :"
    echo "Please enter a your first name: "
    read  fname
    checkdatatype $fname

done
######second name read and check type ###########
echo "right insert"
echo "Please enter a your second name: "
read sname
checkdatatype $sname
while [ $type != "string" ]
do
    echo "please insert only leters ! Try again :"
    echo "Please enter a your firstsecond name: "
    read  sname
    checkdatatype $sname

done
#####Phone number read and check type ###########
echo "right insert"
echo "Please enter a your phone number  name: "
read phone
oldphone="`cut -d ':' -f3 employeeinfo.txt| grep "$phone"`"
checkdatatype $phone
while [[ $type != "decimal" || $oldphone != "" ]]
do
    if [[ $oldphone != "" ]]
    then
        echo "Repeated numbers ! Try again :"
        echo "Please enter a your phone number : "
    else    
        echo "please insert only numbers ! Try again :"
        echo "Please enter a your phone number : "
    fi
    read  phone
    oldphone="`cut -d ':' -f3 employeeinfo.txt| grep "$phone"`"
    checkdatatype $phone
done
######Department name read and check type ###########
echo "right insert"
echo "Please enter a your Department name: "
 read  dname
checkdatatype $dname
while [ $type != "string" ]
do
    echo "please insert only leters ! Try again :"
    echo "Please enter a your first name: "
    read  dname
    checkdatatype $dname

done

######salary read and check type ###########
echo "right insert"
echo "Please enter a your salary : "
read salary
checkdatatype $salary
while [ $type != "decimal" ]
do

    echo "please insert only numbers ! Try again :"
    echo "Please enter a your phone number : "
    read  salary
    checkdatatype $salary
done

################tinsert data to data base #############
echo "Thank you for yor time you entered true data"
echo "$fname:$sname:$phone:$dname:$salary:`date`" >> employeeinfo.txt