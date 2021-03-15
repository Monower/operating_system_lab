#! /usr/bin/bash

# answer to question no:1
string="Welcome to Green University of Bangladesh"
echo ${string:11:5}
echo ${string:11:16}
echo ${string:11:30}


# answer to question no 2
i=1
string=5867458
while (( $string>0 ))
do
a=$(($string%10))

string=$(($string/10))
b[$i]=$a
((i++))
done

m=$i 

for ((i=m;i>=0;i--))
do
if (($i%2==1))
then
echo ${b[$i]}
fi
done









sleep 5