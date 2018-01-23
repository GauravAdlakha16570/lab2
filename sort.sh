#!/bin/sh
Array=(56 45 34 23 12)
N=5

for ((i=0; i<$N; i++))
do 
	for((j=$i; j<$N; j++))
	do
		if [ "${Array[$i]}" -gt "${Array[$j]}" ]; then
			temp=${Array[$i]}
			Array[$i]=${Array[$j]}
			Array[$j]=$temp
fi
done
done
for ((i=0; i<$N; i++))
do
echo ${Array[i]}
done
