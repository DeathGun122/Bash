#!\bin\bash

echo -n "Enter your age: "
read age

[ $age -ge 18 ] && echo "You are eligible to vote" || echo "You are not eligible to vote"