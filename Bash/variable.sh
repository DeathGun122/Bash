#!\bin\bash

# Script to show the use of variables

a=10
name="Rohan"
echo "The value of a is $a"
echo "The value of name is $name"       # $ is used to print the value of variable

name="Rohit"
echo "The value of name is $name"

# variable to store the output of a command
hostname=$(hostname)
echo "The value of hostname is $hostname"