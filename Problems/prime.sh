#!\bin\bash

echo "Enter a number:"
read a

echo "The prime factors of $a are:"
i=2
while [ $i -le $a ]
do
    if [ $(( $a % $i )) -eq 0 ]
    then
        echo -n "$i "
        a=$(( $a / $i ))
    else
        i=$(( $i + 1 ))
    fi
done
echo