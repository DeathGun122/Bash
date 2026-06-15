#!\bin\bash

# Script to show the use of key value pairs
declare -A myArray
myArray=( [name]="Rohan" [age]=20 [city]="Pune" )

echo "The name is ${myArray[name]}"
echo "The age is ${myArray[age]}"
echo "The city is ${myArray[city]}"