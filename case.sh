#!\bin\bash

echo "Enter your marks: "
read marks

case $marks in
    80) echo "Distinction" ;;
    60) echo "First Class" ;;
    40) echo "Second Class" ;;
    *) echo "Fail" ;;   # Default Case
esac

date    # This will print the current date