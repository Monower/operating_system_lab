#! /usr/bin/bash

echo "enter how many numbers you want to enter"
read a
echo "now plz enter $a numbers"

for ((i=0;i<$a;i++))
do
read b[$i]
done

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

sum=$(( ${b[1]} + ${b[2]} ))
echo "The sum of 2nd and 3rd highest number is: $sum"