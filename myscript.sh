#! /usr/bin/bash

# ECHO COMMAND
# echo "Hello world!"

# VARIABLES
# Uppercase by convention
# Letters, numbers, underscores

# a="sadaf"
# echo "My name is $NAME"
# echo "My name is ${NAME}"


# user input
# read -p "Enter your name: " VAR
# echo "Hello $VAR, nice to meet you"

# Simple if statement
# if (($NAME=="Sadaf"))
# then
#     echo "your name is sadaf"
# fi

# if-else
# if ["$NAME" == "Sadaf"]
# then
#     echo "your name is sadaf"
# fi

# if($a -ge "sadaf")
# then
# echo "this is $a"
# fi

# echo Enter two numbers
# read N1 N2
# sum=$(($N1/$N2))
# echo "The sum is: "$sum

# a=10
# b=20

# if [ $a == $b ]
# then
#     echo "a is equal to b"
# else
#     echo "a is not equal to b"
# fi

# for i in {1..5}
# do
# echo "welcome $i times"
# done

# n=1

# while (( $n <= 5 ))
# do
#     echo "welcome $n times"
#     n=$((n+1))
# done

#use hash to get length of the string
# string="This is a string"
# echo "${#string}"

#string and sub-string

# STRING="this is a string"
# SUBSTRING="a"
# expr index "$STRING" "$SUBSTRING"

# echo "how many numbers u want to input: "
# read a

# echo "now enter the numbers sequencially: "
# for ((i=0;i<a;i++))
# do
# read b[$i]
# done

# for ((i=a;i>=0;i--))
# do
# echo "${b[$i]}"
# done

# i=1
# string=5867458
# while (( $string>0 ))
# do
# a=$(($string%10))

# string=$(($string/10))
# b[$i]=$a
# ((i++))
# done

# m=$i 

# for ((i=m;i>=0;i--))
# do
# if (($i%2==1))
# then
# echo ${b[$i]}
# fi
# done

# string=148541547854
# len=${#string}
# i=0
# inc=0
# while (( $string>0 ))
# do
# a=$(($string%10))
# string=$(($string/10))
# b[$i]=$a
# ((i++))
# done
# m=$i
# j=$i
# for ((i=m;i>=0;i--))
# do
#     v=$b[$i]

#     while ((i>=0))
#     do
#         if ["${var[$i]}"=="${b[$i]}"]
#             then
#                 ((inc++))
#         fi
#         ((i--))

#     done
#     echo ${b[i]}" =" $inc " times"

# done
# odd=0
# even=0
# echo "how many numbers u want to enter: "
# read n
# echo $n
# echo "now enter each number se"
# for ((i=0;i<n;i++))
# do
# read a
# num[$i]=$a
# done

# for ((i=0;i<n;i++))
# do
# if (($(${num[$i]}%2==0)))
# then
#     echo "this is even"
#     ((even=$even+${num[i]}))
#     echo $even
# else
#     echo "this is odd"
# fi
# done



# Switch case

# echo "enter name of the fruit"
# read fruit

# case "$fruit" in
# "apple") echo "Apple is good"
# ;;
# "banana") echo "banana is yellow"
# ;;
# "lol") echo "it is lol"
# ;;
# *) echo "this is default"
# esac


#function

hello(){
    echo "hello modon $1 $2 "
    return 10
}

hello ali luiccha
ret=$?

echo "return value is $ret"







sleep 5