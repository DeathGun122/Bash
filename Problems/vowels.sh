#!\bin\bash

echo "Enter a string:"
read s

len=${#s}
s=${s^^}

vowels=0

for(( i=0; i<len; i++ ))
do
    char=${s:$i:1}

    case $char in
    A|E|I|O|U) vowels=$(( $vowels + 1 )) ;;
    esac
    
done

echo "No. of vowels: $vowels"