#!/bin/bash

while getopts "hu:" opt;  #  ":"  if you have to enter arguent after option AND IT CONSIDERED $2 AS THE OPTION IS THE FIRST POITIONAL PARAMETER
do
    case "${opt}" in
        h)
              echo "Usage"  
            echo "use u to specifu usser name"
            echo "use h tfor help"

            ;;
        u)
            username=$2
            sudo useradd $username
            cat /etc/passwd |cut -f1 -d':'
            ;;
        t)
            arg=${opt}
            echo "The option is $arg  and  $2"
            ;;
    esac
done