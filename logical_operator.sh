#!\bin\bash

# and
read -p "Enter your age: " age
read -p "Enter your country: " country

if [ $age -ge 18 ] && [ $country == "India" ]
then
    echo "You are eligible to vote"
else
    echo "You are not eligible to vote"
fi

# or
if [ $age -ge 18 ] || [ $country == "India" ]
then
    echo "You are eligible to vote"
else
    echo "You are not eligible to vote"
fi

# not
if ! [ $age -ge 18 ]
then
    echo "You are not eligible to vote"
else
    echo "You are eligible to vote"
fi