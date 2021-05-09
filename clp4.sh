#! /usr/bin/bash

#------------------------------code for best fit-------------------------

# declare -a barray
# declare -a parray
lowest=9999
printf "\n\t\t\tMemory Management Scheme - Best Fit"
printf "\nEnter the number of blocks:"
read nb 

printf "Enter the number of processes:"
read np

printf "\nEnter the size of the blocks:-\n"

for ((i=1;i<$nb;i++))
do
    printf "Block no.%d " "$i"
    read b[$i]

done

printf "\nEnter the size of the processes :-\n"

for ((i=1;i<=np;i++))
do
printf "Process no.%d " "$i"
read p[$i]
done

for ((i=1;i<=$np;i++))
do
    for ((j=1;j<=$nb;j++))
    do
        if ((${barray[$i]}!=1))
        then
            temp=$(( {b[$j]}-{p[$i]} ))
            if (($temp>=0))
            then
                if (($lowest>$temp))
                then
                    parray[$i]=$j
                    lowest=$temp
                fi
            fi 
        fi 
    done
    fragment[$i]=$lowest
    barray[${parray[$i]}]=1
    lowest=10000
done

printf "\nProcess_no\tProcess_size\tBlock_no\tBlock_size\tFragment"

for ((i=1;i<=$np && ${parray[$i]}!=0;i++))
do 
    printf "\n%d\t\t%d\t\t%d\t\t%d\t\t%d" "$i" "${p[$i]}" "${parray[$i]}" "${b[${parray[$i]}]}" "${fragment[$i]}" 
done