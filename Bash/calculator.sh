#!\bin\bash

add() {
    num1=$1
    num2=$2
    echo "scale=2; $num1 + $num2" | bc
}

sub() {
    num1=$1
    num2=$2
    echo "scale=2; $num1 - $num2" | bc
}

mul() {
    num1=$1
    num2=$2
    echo "scale=2; $num1 * $num2 " | bc
}

div() {
    num1=$1
    num2=$2
    while [ $num2 -eq 0 ]
    do
        echo "Cannot divide by zero"
        read -p "Enter second number again: " num2
    done
    result=$(echo "scale=2; $num1 / $num2" | bc)
    echo $result
}

read -p "Enter first number: " num1
read -p "Enter second number: " num2
read -p "Enter operator(+,-,x,/): " op

while [ $op != "+" ] && [ $op != "-" ] && [ $op != "x" ] && [ $op != "/" ]
do
    echo "Invalid operator"
    read -p "Enter operator(+,-,x,/): " op
done

case $op in
    +) add $num1 $num2 ;;
    -) sub $num1 $num2 ;;
    x) mul $num1 $num2 ;;
    /) div $num1 $num2 ;;
    *) ;;
esac