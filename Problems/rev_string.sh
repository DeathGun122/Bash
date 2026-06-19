#!\bin\bash

echo "Enter a string:"
read s
s=${s^^}
len=${#s[*]}
rev=""
char=""

for(( i=0; i<len; i++ ))
do
    char=${s[i]}
    rev="$char$rev"
done

echo $rev

if [[ $s == $rev ]]
then
    echo "String is Palindrome"
else  
    echo "String is not Palindrome"
fi