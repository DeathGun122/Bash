#!/bin/bash

echo "Enter file name:"
read filename

if ! [ -f "$filename" ]
then
    echo "File does not exist."
    exit 1
fi

content=""

while read line
do
    content+=$line
done < "$filename"

echo "Enter choice:\
    1. Upper Case\
    2. Lower Case"
read c

case $c in
1) content=${content^^} ;;
2) content=${content,,} ;;
esac

echo "$content" > $filename
echo "File rewritten successfully."