#!/bin/bash
dir="$1"
 
if [ -d "$dir"  ]
then

echo "$dir is directory "
   echo "Permitions :"
    ls -ld $dir
elif [ -f "$dir" ]
then
   echo "$dir is file"
   echo "Permitions :"
    ls -la $dir
 
fi

