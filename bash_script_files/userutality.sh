#!/bin/bash
shopt -s expand_aliases
alias include='source'
include ./Functions/userAddfun.sh
include ./Functions/usermodfun.sh
include ./Functions/userdelfun.sh

echo "Enter 1 for Adding users"
echo "Enter 2 for modifing users"
echo "Enter 3 for deleting users"

echo "Please enter your choise number:"
read var

case "$var" in

	1)
	    userAddfun
		;;
    2)
        echo "Enter 1 for modify users pass"
        echo "Enter 2 for modify users comment"
        echo "please select option:"
        read modopt
	    usermodfun $modopt
	    ;;
    3)
	   userdelfunc
      esac

