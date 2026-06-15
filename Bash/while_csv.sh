#!\bin\bash

cat test.csv | awk 'NR!=1 {print}' | while IFS="," read id name age
do
    echo "ID: $id"
    echo "Name: $name"
    echo "Age: $age"
    echo
done < test.csv