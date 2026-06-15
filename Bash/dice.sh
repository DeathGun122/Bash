#!\bin\bash

num=$(( RANDOM % 6 + 1 ))
count=0

while [ $num -ne 6 ]
do
    count=$(( $count + 1 ))
    num=$(( RANDOM % 6 + 1 ))
done

echo "It took $count tries to roll a 6"