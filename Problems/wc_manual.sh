#!/bin/bash

words=0
chars=0
lines=0

echo "Enter file name:"
read filename

if ! [ -f "$filename" ]
then
    echo "File does not exist."
    exit 1
fi

while read line
do
    lines=$(( lines + 1 ))

    len=${#line}
    chars=$(( chars + len + 1 ))   # +1 for newline

    for word in $line
    do
        words=$(( words + 1 ))
    done

done < "$filename"

echo "Words in file: $words"
echo "Lines in file: $lines"
echo "Characters in file: $chars"