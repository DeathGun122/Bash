#!\bin\bash

echo "Enter a number:"
read a

a1=$a
len=0
while [ $a1 -gt 0 ]
do
    len=$(( $len + 1 ))
    a1=$(( $a1 / 10 ))
done

copy=$a
digit=0
sum=0

while [ $copy -gt 0 ]
do
    digit=$(( $copy % 10 ))
    sum=$(( $sum + $digit ** $len ))
    copy=$(( $copy / 10 ))
done

if [ $a -eq $sum ]
then
    echo "$a is a Armstrong Number."
else
    echo "$a is not a Armstrong Number."
fi