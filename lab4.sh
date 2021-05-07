#! /usr/bin/bash

#------------------answer to question no 1--------------------
#MFT

# read -p "Enter the total memory available (in Bytes) -- : " ms
# read -p "Enter the block size (in Bytes) -- : " bs 

# p=0
# nob=$(( $ms/$bs ))
# ef=$(( $ms-$nob*$bs ))

# read -p "Enter the number of processes: " n 

# for ((i=0;i<$n;i++))
# do
#     a=$(( $i+1 ))
#     printf "Enter memory required for process %d (in Bytes): " "$a"
#     read mp[$i]
# done

# printf "\nNo. of Blocks available in memory -- %d" "$nob"
# printf "\n\nPROCESS\tMEMORY REQUIRED\t ALLOCATED\tINTERNAL FRAGMENTATION"

# for ((i=0;i<$n && $p<$nob; i++))
# do
#     b=$(( $i+1 ))
#     printf "\n %d\t\t%d" "$b" "${mp[$i]}"
#     if  ((${mp[$i]}>$bs))
#     then
#         printf "\t\tNO\t\t---"
#     else
#         c=$(( $bs-${mp[$i]} ))
#         printf "\t\tYES\t%d" "$c"
#         tif=$(( $tif+$c ))
#         (( p++ ))
#     fi
# done

# if (($i<$n))
# then
#     printf "\nMemory is Full, Remaining Processes cannot be accomodated"

# fi

# printf "\n\nTotal Internal Fragmentation is %d" "$tif"
# printf "\nTotal External Fragmentation is %d" "$ef"

#-------------------------------------------------answer to question no 2----------------------------------
#MVT:

read -p "Enter the total memory available (in Bytes)-- " ms
temp=$ms
for ((i=0;ch=='y';i++))
do
    a=$(( $i+1 ))
    printf "\nEnter memory required for process %d (in Bytes) -- " "$a"
    read mp[$i]

    if ((${mp[$i]}<=$temp))
    then
        printf "\nMemory is allocated for Process %d " "$a"
        temp=$(( $temp-${mp[$i]} ))
    else
        printf "\nMemory is Full"
        break
    fi
    read -p "Do you want to continue(y/n) -- " ch
    (( n++ ))
done

printf "\n\nTotal Memory Available -- %d" "$ms"
printf "\n\n\tPROCESS\t\t MEMORY ALLOCATED "

for ((i=0;i<$n;i++))
do
    b=$(( $i+1 ))
    printf "\n \t%d\t\t%d" "$b" "${mp[$i]}"
done

c=$(( $ms-$temp ))
printf "\n\nTotal Memory Allocated is %d" "$c"
printf "\nTotal External Fragmentation is %d" "$temp"