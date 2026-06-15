#!\bin\bash
set -x

# Access Arguments
echo "First Argument: $1"
echo "Second Argument: $2"
echo "All Arguments: $*"
echo "Number of Arguments: $#"
echo "Script Name: $0"

for args in "$@"
do
    echo $args
done