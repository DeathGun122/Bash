#!\bin\bash

myArray=( 1 20 30.5 Hello "Hey!" )
length=${#myArray[*]}

for (( i=0; i<$length; i++ ))
do
    echo "Value at index $i is ${myArray[$i]}"
done