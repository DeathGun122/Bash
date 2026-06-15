#!\bin\bash

FILE_UTIL=$(df -H | egrep -v "Filesystem|tmpfs|none" | grep "C:" | awk '{print $5}' | tr -d %)

if [ $FILE_UTIL -ge 80 ]
then
    echo "Warning, your disk is running low."
else
    echo "Your disk is fine."
    echo "Free space: $FILE_UTIL %"
fi