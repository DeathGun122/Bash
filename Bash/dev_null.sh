#!\bin\bash

read -p "Enter the site domain: " domain

ping -c 1 $domain &> /dev/null
sleep 1s

if [ $? -eq 0 ]
then
    echo "Site is up"
else
    echo "Site is down"
fi