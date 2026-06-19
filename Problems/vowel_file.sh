#!/bin/bash

echo "Enter file name:"
read filename

if ! [ -f "$filename" ]
then
    echo "File does not exist."
    exit 1
fi

vowels=0

while read line
do
    len=${#line}

    for(( i=0; i<len; i++ ))
    do
        char=${line:$i:1}

        case $char in
            A|E|I|O|U|a|e|i|o|u)
                vowels=$((vowels + 1))
                ;;
        esac
    done
done < "$filename"

echo "No. of vowels: $vowels"

# ----OR----

<<comment

#!/bin/bash

echo "Enter file name:"
read filename

if ! [ -f "$filename" ]
then
    echo "File does not exist."
    exit 1
fi

count=$(grep -o '[AEIOUaeiou]' "$filename" | wc -l)

echo "No. of vowels: $count"

comment