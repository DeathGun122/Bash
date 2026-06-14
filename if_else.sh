#!\bin\bash

read -p "Enter your marks: " marks
if [ $marks -gt 40 ]
then
    echo "Pass"
else
    echo "Fail"
fi