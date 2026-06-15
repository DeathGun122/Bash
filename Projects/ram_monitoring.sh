#!\bin\bash

FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
THRESHOLD=1000

if [ $FREE_SPACE -lt $THRESHOLD ]
then
    echo "Warning, your RAM is running low."
else
    echo "Your RAM is fine."
    echo "Free space: $FREE_SPACE MB"
fi