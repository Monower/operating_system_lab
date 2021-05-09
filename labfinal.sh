#! /usr/bin/bash

#---------------answer to question no 1------------------

# k=0
# for ((i=1;$i<=100;i++))
# do  
# if (($i%7==0)) || (($i%9==0))
# then
#     if (($(($i%5))!=0))
#     then
#         array[$k]=$i 
#         ((k++))
#     fi

# fi  

# done

# echo ${array[@]}

#--------------------answer to question no 2-----------

# read -p "Enter 7 digit number: " n 

# len=${#n}

# for ((i=0;i<=$len;i++))
# do
#     array[$i]=${n:$i:1}
# done

# echo ${array[1]} ${array[3]} ${array[5]}
# sum=$(( ${array[1]}+${array[3]}+${array[5]} ))

# echo "the sum of the even position element is: 8+7+5= $sum"

#-----------------ans to 3-----------------

# read -p "Enter 8 digit number: " n 
# len=${#n}

# for ((i=0;i<=$len;i++))
# do
#     array[$i]=${n:$i:1}
# done

# for ((i=0;i<$len;i++))
# do
#     for ((j=i+1;j<$len;j++))
#     do
#         if ((${array[$i]}>${array[$j]}))
#         then
#             temp=${array[$i]}
#             array[$i]=${array[$j]}
#             array[$j]=$temp
#         fi
#     done
# done

# sum=$(( ${array[0]}+${array[1]}+${array[2]}+${array[3]} ))

# echo $sum


#---------------------ans to 4----------------------


read -p "Enter the number of process: " n

for ((i=0;i<$n;i++))
do
p[$i]=$i 
printf "Enter Burst Time for Process P%d " "$i"
read bt[$i]
done

for ((i=0;i<$n;i++))
do
    a=$(( $i+1 ))
    for ((k=$a;k<$n;k++))
    do
        if ((${bt[$i]}>${bt[$k]}))
        then
            temp=${bt[$i]}
            bt[$i]=${bt[$k]}
            bt[$k]=$temp

            temp=${p[$i]}
            p[$i]=${p[$k]}
            p[$k]=$temp
        fi
    done
done

wt[0]=0
tat[0]=${bt[0]}

for ((i=1;i<$n;i++))
do
b=$(( $i-1 ))
wt[$i]=${tat[$b]}
c=${wt[1]}
d=${bt[$i]}
x=$(( $c+$d ))
tat[$i]=$x
done

printf "\n\t PROCESS \tBURST TIME \t WATING TIME\t TURNAROUND TIME\n"

for ((i=0;i<$n;i++))
do
printf "\n\t P%d \t\t %d \t\t %d \t\t %d" "${p[$i]}" "${bt[$i]}" "${wt[$i]}" "${tat[$i]}"
done