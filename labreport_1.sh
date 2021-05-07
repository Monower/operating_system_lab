#! /usr/bin/bash

# --------------------answer to question no 1---------------

# echo "enter the number"
# read a 

# number=$(( $a/10 ))

# case $number in
#  "10") echo "You got A+"
#  ;;
#  "9") echo "you got A+"
#  ;;
#  "8") echo "you got A+"
#  ;;
#  "7") echo "You got A"
#  ;;
#  "6") echo "You got A-"
#  ;;
#  "5") echo "You got B"
#  ;;
#  "4") echo "You got D"
#  ;;
#  *) echo "you failed"
# esac

#------------------------------------answer to question no 2--------------------------

# string="Today is 12 November."
# len=${#string}

# alpha=0
# dig=0
# spec=0

# for ((i=0;i<=$len;i++))
# do
# a[$i]=${string:$i:1}
# done

# for ((i=0;i<=$len;i++))
# do
# b[$i]=$( printf "%d" "'${a[$i]}")
# done

# for ((i=0;i<=$len;i++))
# do
#     if ((${b[$i]}>=65)) && ((${b[$i]}<=90)) 
#     then
#         ((alpha++))
#     elif ((${b[$i]}>=97)) && ((${b[$i]}<=122))
#     then
#         ((alpha++))
#     elif ((${b[$i]}>=48)) && ((${b[$i]}<=57))
#     then
#         ((dig++))
#     elif ((${b[$i]}>=32)) && ((${b[$i]}<=47))
#     then
#         ((spec++))
#     elif ((${b[$i]}>=58)) && ((${b[$i]}<=64))
#     then
#         ((spec++))
#     elif ((${b[$i]}>=91)) && ((${b[$i]}<=96))
#     then
#         ((spec++))
#     elif ((${b[$i]}>=123)) && ((${b[$i]}<=126))
#     then
#         ((spec++))
    

#     fi
# done
# echo "Alphabets = "$alpha
# echo "Digits = "$dig
# echo "Special characters = "$spec

#--------------------------------------------------answer to question no 3 -------------------------------


# number=1
# rows=5
# for((i=rows; i>=1; i--))
# do
#   for((j=1; j<=i; j++))
#   do
#     echo -n "$number "
#     number=$((number + 1))
#   done
#   number=1
#   echo
# done

#-----------------------------answer to question no 4-----------------


# printf "enter two numbers "
# read a b
# fact=1
# bact=1


# if (($a<0))
# then
#     echo "factorial of negetive number does not exist"
# else
#     for ((i=1;i<=$a;++i))
#     do
#         fact=$((fact*$i))
#     done
#     for ((i=1;i<=$b;++i))
#     do
#         bact=$((bact*$i))
#     done
# fi

# echo $fact $bact
# plus=$((fact+bact))

# echo $plus
# printf "shell function cannot return value of more than 255.\n That's why it is not possible to solve this problem with function."

#----------------------------------answer to question no 5--------------------

string="45158845"
len=${#string}
for ((i=0;i<=$len;i++))
do
a[$i]=${string:$i:1}
done

echo ${a[0]}
for ((i=$len;i>=1;i--))
do
echo ${a[$i]}

done

