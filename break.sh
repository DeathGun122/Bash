#!\bin\bash

no=6
for i in {1..10}
do
    if [ $i -eq $no ]
    then
        echo "Found $no"
        break
    fi
    echo "Number $i"
done