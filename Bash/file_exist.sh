#!\bin\bash

FILEPATH="/mnt/c/Users/broha/OneDrive/Documents/Research & Code/Bash/names.txt"

if [ -f "$FILEPATH" ]
then
    echo "File exists"
else
    echo "File does not exist"
    exit 1
fi

if [ -d "$(dirname "$FILEPATH")" ]
then
    echo "Directory exists"
else
    echo "Directory does not exist"
    exit 1
fi