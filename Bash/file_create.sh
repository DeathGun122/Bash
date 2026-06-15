#!\bin\bash

FILEPATH="/mnt/c/Users/broha/OneDrive/Documents/Research & Code/Bash/new_file.txt"

if [ -f "$FILEPATH" ]
then
    echo "File exists"
else
    touch "$FILEPATH"
    echo "File created"
fi