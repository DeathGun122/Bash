#!\bin\bash

echo "Enter lower limit:"
read l
echo "Enter upper limit:"
read h

echo "The fibonacci number between $l and $h are:"

a=0
b=1
temp=0

while [ $l -gt $a ]
do
    temp=$a
    a=$b
    b=$(( $temp + $b ))    
done

while [ $a -ge $l ] && [ $a -le $h ]
do
    echo $a
    temp=$a
    a=$b
    b=$(( $temp + $b )) 
done