#!/bin/bash
dir="$1"
 
if [ -d "$dir"  ]
then
cd  $dir
touch fileindir
   echo "$dir found "
else
cd 
fi