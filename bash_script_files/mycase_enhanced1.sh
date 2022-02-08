#!/bin/bash
#!/user/bin/bash
#export LC_COLLATE=C
shopt -s extglob
i=0
j=1
echo "Please enter a string: "
IFS= read -r string



case $string in
+([a-z]) ) echo "lowercase letter";;
+([A-Z]) ) echo "uppercase letter";;
+([0-9]) ) echo "decimal digit";;
+([a-zA-Z]) ) echo "nmix u and l";;
+([a-zA-Z0-9]) ) echo "nmix u and l and digit";;

#   (?) echo "any other single character";;

esac
./mycase_enhanced1.sh
# maxlengh=${#string}
# uppeCount=0
# lowercount=0
# decimalcount=0
# while [ "$i" -lt $maxlengh ]
# do
#     char=${string:$i:$j}
#     case $char in
#   ([[:lower:]]) let lowercount=$lowercount+1;;
#   ([[:upper:]]) let uppeCount=$uppeCount+1;;
#   ([[:digit:]]) let decimalcount=$decimalcount+1;;
#     esac
#     let i=$i+1
# done
# if [ $uppeCount -gt 0 ] &&  [ $lowercount -eq 0 ] && [  $decimalcount -eq 0  ];
# then
#     echo "Upper Case String"
#     elif [ $lowercount -gt 0 ] &&  [ $uppeCount -eq 0 ] && [  $decimalcount -eq 0  ];
#     then
#         echo "lower Case String"
#         elif [ $decimalcount -gt 0 ] &&  [ $uppeCount -eq 0 ] && [  $lowercount -eq 0  ];
#         then
#             echo "decimal Case String"
#             elif [ $decimalcount -eq 0 ] &&  [ $uppeCount -gt 0 ] && [  $lowercount -gt 0  ];
#             then
#             echo "Mixed upper and lower Case String"
#             elif [ $decimalcount -gt 0 ] &&  [ $uppeCount -gt 0 ] && [  $lowercount -gt 0  ];
#             then
#             echo "Mixed upper and lower Case  and dicimal number String"

#         else
#             echo "any thing else"
# fi    
#################################
# $lowercount $decimalcount

# if [[ "$string" =~ [A-Za-z] ]];
# then
#     echo "mixed uper and lower"

# elif [[ "$string" =~ [A-Z] ]] && [[ "$string" =~ [^a-z0-9] ]]; 
# then
#   echo "uppercase character only"
#   elif [[ "$string" =~ [[:lower:]] && "$string" =~ [^A-Z0-9]  ]]; 
#     then
#         echo "lower character only"
#         elif [[ "$string" =~ [[:digit:]] && "$string" =~ [^a-zA-Z]  ]]; 
#             then
#                 echo "DIGITS character only"
#                 # elif [[ "$string" =~ [[:alpha:]] && "$string" =~ [^a-zA-Z0-9]  ]]; 
#                 # then
#                 #     echo "neither lower nor uppercase letter"
#                     elif [[ "$string" =~ [a-zA-Z] && "$string" =~ [^0-9]  ]]; 
#                     then
#                         echo "mix lower and uppercase letter"
  

  
# fi
  



# if [[ "$string" =~ [[:upper:]] ]];
# then
#     if [[ "$string" =~ [[:lower:]] ]];
#     then
#         echo "mixed" 
#     fi
# #   echo "uppercase character found "
# fi

# if [[ "$string" =~ [[:upper:]] && "$string" =~ [[:lower:]]  ]]; then
#   echo "uppercase character found and lower"
# fi
# case $string in
#   ( ~ [[:upper:]] -a ~ [[:lower:]]  ) echo mixed letter;;
# #   (~[[:upper:]]) echo uppercase letter;;
# #   (~[[:alpha:]]) echo neither lower nor uppercase letter;;
# #   (~[[:digit:]]) echo decimal digit;;
# #   (?) echo any other single character;;
#   ("") echo nothing;;
#   (*) echo anything else;;
# esac