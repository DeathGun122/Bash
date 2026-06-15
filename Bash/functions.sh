#!\bin\bash

function hello() {
    echo "Hello World"
}

hello2() {
    echo "Hello World 2"
}

for ((  i=0; i<5; i++ ))
do
    hello
done