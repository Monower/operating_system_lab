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

# a="Today is 12 November"

testing=$( printf "%d" "'${a}" )

# echo $testing

# string="Today is 12 November"
# len=${#string}
# echo $len
# echo ${string[0]}

# ## converted the string to array
# while (( $string>0 ))
# do
#     a=$(($string%10))
#     string=$(($string/10))
#     b[$i]=$a
#     ((i++))
# done

# for ((i=0;i<=$len;i++))
# do
# echo ${b[$i]}

# done

string="Today is 12 November."
len=${#string}




alpha=0
dig=0
spec=0

for ((i=0;i<=$len;i++))
do
a[$i]=${string:$i:1}


done

for ((i=0;i<=$len;i++))
do
b[$i]=$( printf "%d" "'${a[$i]}")

done

for ((i=0;i<=$len;i++))
do
    if ((${b[$i]}>=65)) && ((${b[$i]}<=90)) 
    then
        ((alpha++))
    elif ((${b[$i]}>=97)) && ((${b[$i]}<=122))
    then
        ((alpha++))
    elif ((${b[$i]}>=48)) && ((${b[$i]}<=57))
    then
        ((dig++))
    elif ((${b[$i]}>=32)) && ((${b[$i]}<=47))
    then
        ((spec++))
    elif ((${b[$i]}>=58)) && ((${b[$i]}<=64))
    then
        ((spec++))
    elif ((${b[$i]}>=91)) && ((${b[$i]}<=96))
    then
        ((spec++))
    elif ((${b[$i]}>=123)) && ((${b[$i]}<=126))
    then
        ((spec++))
    

    fi


done
echo "Alphabets = "$alpha
echo "Digits = "$dig
echo "Special characters = "$spec



