#!/bin/bash

cd khattab-30-12-2021
maxnumber=`ls | sed -e s/[^0-9]//g |sort -n|tail -1`
echo $maxnumber
from=$(($maxnumber+1))
to=$(($maxnumber+26))
for ((i=$from;i<$to;i++))
do
touch khattab$i
done