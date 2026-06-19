#!\bin\bash

echo "Enter a three-digit number:"
read a

while [ $a -lt 100 ] || [ $a -gt 999 ]
do
    echo "Number is not three-digit. Try again!"
    echo "Enter a three-digit number:"
    read a
done

middle=0
sum=0
copy=$a
index=1

while [ $copy -gt 0 ]
do
    if [ $(( $index % 2 )) -ne 0 ]
    then
        sum=$(( $sum + $copy % 10 ))
    else
        middle=$(( $copy % 10 ))
    fi   

    copy=$(( $copy / 10 ))
    index=$(( $index + 1 ))
done

if [ $sum -eq $middle ]
then
    echo "Number matches conditions."
else
    echo "Number does not matches conditions."
fi