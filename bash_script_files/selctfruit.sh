#!/bin/bash
PS3="PLEASE SELECT CHOICE:"  # CHANGE PROMPT
echo "select your option"
options=("banana" "apple" "kiwi" "Quit") 
appleopt=("red" "yellow" "green")
bananaopt=("yellow" "green")
select opt in "${options[@]}"
do
case "$opt" in 
    "banana")
        echo "select your favoutite color :"
        select banpt in "${bananaopt[@]}"
        do
            echo "your favourite fruit is $banpt $opt "
            ./selctfruit.sh
            exit 1
        done
        ;;
    "apple")
        echo "select your favoutite color :"
        select appopt in "${appleopt[@]}"
        do
            echo "your favourite fruit is $appopt $opt "
            ./selctfruit.sh
            exit 1

        done
        ;;
   "kiwi")
        echo "your favourite fruit is kiwi "
        
        ;;
    "Quit")
        break
        ;;    
    *)
     echo "invalid option"
    ;;    
esac
done