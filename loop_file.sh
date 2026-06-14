#!\bin\bash

FILE="/mnt/c/Users/broha/OneDrive/Documents/Research & Code/Bash/names.txt"

for name in $(cat "$FILE")
do
    echo "Hello $name"
done