#!/bin/bash
PS3="PLEASE SELECT list option:" 
options=("-l" "-a" "-d" "-i" "-R" "-l -a" "-a -l" "-la" "-al" "quite")
dir="$1"
select opt in "${options[@]}"
do
case $opt in
 "-l" )
        if [ -d "$dir"  ]
        then
            ls -l $dir
        else
            ls -l
        fi
        ;;
 "-a" )
        if [ -d "$dir"  ]
        then
            ls -a $dir
        else
            ls -a
        fi
        ;;       
 "-d" )
        if [ -d "$dir"  ]
        then
            ls -d $dir
        else
            ls -d
        fi
        ;;       
 "-i" )
        if [ -d "$dir"  ]
        then
            ls -d $dir
        else
            ls -d
        fi
        ;;       
 "-R" )
        if [ -d "$dir"  ]
        then
            ls -R $dir
        else
            ls -R
        fi
        ;;  
 "-l -a" | "-a -l" | "-la" | "-al" )
        if [ -d "$dir"  ]
        then
            ls -la $dir
        else
            ls -la
        fi
        ;;
         
  "quite" )
        exit
      ;;            
 esac  
 
done