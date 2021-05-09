#! /usr/bin/bash

#ans to ques no 1
# echo "enter how many numbers you want to enter"
# took input from user
# read a
# echo "now plz enter $a numbers"

#ran a loop to get inputs from user
# for ((i=0;i<$a;i++))
# do
# read b[$i]
# done

#sorted the array in decending order
for ((i=0;i<$a;i++))
do
    for ((j=i+1;j<$a;j++))
    do
        if ((${b[$i]}<${b[$j]}))
        then
            temp=${b[$i]}
            b[$i]=${b[$j]}
            b[$j]=$temp
        fi
    done
done

#summed the 2nd and 3rd element of the array
# sum=$(( ${b[1]} + ${b[2]} ))
# echo "The sum of 2nd and 3rd highest number is: $sum"

#---------------------------------------------------------
#ans to question no 2

fun_arg()
{
    string=$1
    len=${#string}
    i=0
#------here we split the string into array-----
    while (( $string>0 ))
    do
        a=$(($string%10))
        string=$(($string/10))
        b[$i]=$a
        ((i++))
    done
#-------here we sort the array according to decending order---------
    for ((i=0;i<$len;i++))
    do
        for ((j=i+1;j<$len;j++))
        do
            if ((${b[$i]}<${b[$j]}))
            then
                temp=${b[$i]}
                b[$i]=${b[$j]}
                b[$j]=$temp
            fi
        done
    done
    echo "the highest digit is: ${b[0]}"
}

echo "enter a number"
read a
fun_arg "$a"