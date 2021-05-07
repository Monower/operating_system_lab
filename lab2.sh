#! /usr/bin/bash

#---------------------------answer to question no 1----------------------
#FCFS shcduling

# echo "Enter the number of processes: "
# read n 

# for  ((i=0;i<$n;i++))
# do
# echo "Enter the burst time for $i"
# read bt[$i]
# done

# wt[0]=0
# tat[0]=${bt[0]}

# for ((i=1;i<$n;i++))
# do
# a=$(( $i-1 ))
# wt[$i]=${tat[$a]}
# b=${bt[$i]}
# c=${wt[$i]}
# d=$(( $b+$c ))
# tat[$i]=$d
# done

# printf "\nPROCESS\t\tBURST TIME\tWATING TIME\tTURNAROUND TIME"

# for ((i=0;i<n;i++))
# do
# printf "\nP%d \t\t %d \t\t %d \t\t %d" "$i" "${bt[$i]}" "${wt[$i]}" "${tat[$i]}"
# done


#-----------------------------------------------answer to question no 2----------------------------------------------
#SJF scheduling


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

