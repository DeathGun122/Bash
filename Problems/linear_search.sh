#!/bin/bash

echo "Enter size of array:"
read n

declare -a arr
echo "Enter elements:"
for(( i=0; i<n; i++ ))
do
    read ele
    arr[i]=$ele
done

echo "Elements of the Array:"
echo "${arr[*]}"

echo "Enter element to be searched:"
read index

for(( i=0; i<n; i++ ))
do
    if [ ${arr[i]} -eq $index ]
    then
        echo "$index found at index $i"
        break
    fi
done