#!\bin\bash

reverse_digits() {
    num=$1
    rev=0
    while [ $num -ne 0 ]
    do
        rev=$(( $rev * 10 + $num % 10 ))
        num=$(( $num / 10 ))
    done
    echo "Reversed number: $rev"
}

sum_digits() {
    num=$1
    sum=0
    while [ $num -ne 0 ]
    do
        sum=$(( $sum + $num % 10 ))
        num=$(( $num / 10 ))
    done
    echo "Sum of digits: $sum"
}

echo "Enter a number:"
read a
echo "Enter your choice:"

c=0

while [ $c -ne 3 ]
do
    echo "1. Reverse digits"
    echo "2. Sum of digits"
    echo "3. Exit"
    read c
    case $c in
        1) reverse_digits $a ;;
        2) sum_digits $a ;;
        3) 
            echo "Thank you!"
            exit 1 ;;
        *) echo "Invalid Input. Try again." ;;
    esac
done