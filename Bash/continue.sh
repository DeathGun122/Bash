#!\bin\bash

for i in {1..10}
do
    r=$(( $i % 2 ))
    if [ $r -eq 0 ]
    then
        continue
    fi
    echo "Odd Number : $i"
done