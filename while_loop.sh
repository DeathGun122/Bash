#!\bin\bash

count=0
num=10

while [  $count -le $num ]
do
    echo "Count is $count"
    count=$(( $count + 1 ))
done