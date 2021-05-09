#! /usr/bin/bash

#----------------code for worse fit in shell--------------

printf "\nEnter the Total Number of Blocks:\t"
read number_of_blocks

printf "Enter the Total Number of Files:\t"
read number_of_files

printf "\nEnter the Size of the Blocks:\n"
for ((m=0;m<$number_of_blocks;m++))
do
    a=$(( $m+1 ))
    printf "Block No.[%d]:\t" "$a"
    read blocks[$m]
done

printf "Enter the Size of the Files:\n"
for ((m=0;m<$number_of_files;m++))
do
    b=$(( $m+1 ))
    printf "File No.[%d]:\t" "$b"
    read files[$m]
done

for ((m=0;m<$number_of_files;m++))
do
    for ((n=0;n<$number_of_blocks;n++))
    if ((${block_arr[$n]}!=1))
    then
        temp=$(( ${blocks[$n]}-${files[$m]} ))
        if (($temp>=0))
        then
            if (($top<$temp))
            then
                file_arr[$m]=$n 
                top=$temp
            fi
        fi
    fi 
    fragments[$m]=$top
    block_arr[${file_arr[$m]}]=1
    top=0
done

printf "\nFile Number\tFile Size\tBlock Number\tBlock Size\tFragment"
for ((m=0;m<$number_of_files;m++))
do
    printf "\n%d\t\t%d\t\t%d\t\t%d\t\t%d" "$m" "${files[$m]}" "${file_arr[$m]}" "${blocks[${file_arr[$m]}]}" "${fragments[$m]}"
done

printf "\n"

