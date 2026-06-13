#!\bin\bash

# Arrays
myArray=( 1 20 30.5 Hello "Hey!" )
echo "${myArray[3]}"

echo "All values in array are ${myArray[*]}"
echo "Length of array is ${#myArray[*]}"

# Slicing
echo "${myArray[@]:2:3}"    # start : no of elements

# Append
myArray+=(40 50)
echo "${myArray[*]}"