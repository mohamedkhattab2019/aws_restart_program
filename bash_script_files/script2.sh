#!/bin/bash
var1="Iam first var in fist script"
var2="var2"
echo "$var1 $var2"
touch script3.sh
chmod +x script3.sh
printf " " >script3.sh
printf "arg=$1\n" >>script3.sh
printf "echo \"Hello from script3\"\n" >>script3.sh
printf "echo \"$1\"\n" >>script3.sh
# echo "" >script3.sh
# echo "echo 'hellow from script3'"  >>script3.sh
# echo "echo $var1" >>script3.sh
./script3.sh 