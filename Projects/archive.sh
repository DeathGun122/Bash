#!\bin\bash

# Variables
BASE="/mnt/c/Users/broha/OneDrive/Documents/Research & Code/Bash"
DAYS=10
DEPTH=1
RUN=0

# Check if the directory exists
if ![ -d "$BASE" ]
then
    echo "Directory does not exist"
    exit 1
fi

# Create the archive folder if it doesn't exist
if [ ! -d "$BASE/archive" ]
then
    mkdir "$BASE/archive"
fi

# Find the files larger then 20 MB and move them to the archive folder
for i in `find $BASE -maxdepth $DEPTH -type f -size +20M`
do
    if [ $RUN -eq 0 ]
    then
        echo "[$(date "+%d-%m-%Y %T")] Archiving $i ===> $BASE/archive"
        gzip $i || exit 1
        mv $i.gz $BASE/archive || exit 1
    fi
done