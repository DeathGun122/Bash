#!\bin\bash

read -p "Enter site domain: " domain

ping -c 1 $domain
# sleep 5s

if [ $? -eq 0 ]
then
    echo "Site is up"
else
    echo "Site is down"
fi