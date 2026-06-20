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

largest=${arr[0]}
second_largest=0

for(( i=1; i<n; i++ ))
do
    if [ ${arr[i]} -ge $largest ]
    then
        second_largest=$largest
        largest=${arr[i]}
    elif [ ${arr[i]} -ge $second_largest ]
    then
        second_largest=${arr[i]}
    fi
done

echo "Largest Number: $largest"
echo "Second Larger Number: $second_largest"