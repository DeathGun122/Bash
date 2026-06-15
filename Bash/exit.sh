#!\bin\bash

if [  $# -eq 0 ]
then
    echo "Not enough arguments"
    exit 1
fi

echo "First Argument: $1"
echo "Second Argument: $2"
echo "All Arguments: $*"
echo "Number of Arguments: $#"
echo "Script Name: $0"