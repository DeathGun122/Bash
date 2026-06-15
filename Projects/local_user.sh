#!\bin\bash

# sudo / root access
if [ $UID -ne 0 ]
then
    echo "Please run with sudo or root access"
    exit 1
fi

# One argument for username
if [ $# -lt 1 ]
then
    echo "Please provide one argument for username"
    exit 1
fi

# Store the username in a variable
USERNAME=$1

# Store other arguments as account comments
shift
COMMENT=$@

# Create the password
PASSWORD=$(date +%s%N)

# Create the user
useradd -c "$COMMENT" -m $USERNAME

# Check if the user was created successfully
if [ $? -ne 0 ]
then
    echo "User creation failed"
    exit 1
fi

# Set the password for the user
echo $PASSWORD | passwd --stdin $USERNAME

# Check if the password was set successfully
if [ $? -ne 0 ]
then
    echo "Password set failed"
    exit 1
fi

# Force password change on first login
passwd -e $USERNAME

# Display the username and password
echo "User created successfully"
echo
echo "Username: $USERNAME"
echo "Password: $PASSWORD"
echo
echo $(hostname)
