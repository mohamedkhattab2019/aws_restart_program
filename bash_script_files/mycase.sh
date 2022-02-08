#!/bin/bash
echo "Please enter a character: "
IFS= read -r c


case $c in
  ([[:lower:]]) echo "lowercase letter";;
  ([[:upper:]]) echo "uppercase letter";;
  ([[:alpha:]]) echo "neither lower nor uppercase letter";;
  ([[:digit:]]) echo "decimal digit";;
  (?) echo any other "single character";;
  ("q") exit 1;;
  (*) echo "anything else";;
esac
./mycase.sh