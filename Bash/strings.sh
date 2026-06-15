#!\bin\bash

myVar="Hello World"
myVarLength=${#myVar}
echo "The length of string is $myVarLength"

echo "Upper Case is ${myVar^^}"
echo "Lower Case is ${myVar,,}"

echo "Replace is ${myVar/World/India}"

echo "Replace all is ${myVar//World/India}"

echo "Sliced string is ${myVar:0:5}"