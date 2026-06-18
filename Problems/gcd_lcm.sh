#!\bin\bash

gcd_lcm() {
    if [ $a -lt 0 ] || [ $b -lt 0 ]
    then
        echo "Numbers cannot be negative"
        exit 1
    fi

    if [ $a -eq 0 ] && [ $b -eq 0 ]
    then
        echo "GCD is undefined for 0 and 0"
        exit 1
    fi

    temp=0

    if [ $b -ge $a ]
    then
        temp=$a
        a=$b
        b=$temp
    fi

    a1=$a
    b1=$b

    while [ $b -gt 0 ]
    do
        rem=$(( $a % $b ))
        a=$b
        b=$rem
    done

    echo "GCD: $a"
    lcm=$(( $a1 * $b1 / $a ))
    echo "LCM: $lcm"
}

echo "Enter 1st number:"
read a
echo "Enter 2nd number:"
read b

gcd_lcm $a $b