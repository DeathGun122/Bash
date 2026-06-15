#!\bin\bash

a=10
until [ $a -eq 0 ]
do
    echo "Value of a is $a"
    a=$(( $a - 1 ))
done