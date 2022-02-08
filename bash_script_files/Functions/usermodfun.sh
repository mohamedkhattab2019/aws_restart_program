function usermodfun()
{
if [ $modopt -eq 1 ]
then

    echo "Please Enter user name"
    read username
    grep -q "$username" /etc/passwd
    if [ $? -eq 0 ]
    then
        echo "Please Enter user new password"
        read password
        sudo usermod $username -p "$password"
        echo "congruts user $username  password is modified"
    else
    usermodfun
echo "user not exist"
fi

elif [ $modopt -eq 2 ]
then
    echo "Please Enter user name"
    read username
    grep -q "$username" /etc/passwd
    if [ $? -eq 0 ]
    then
        echo "Please Enter user new comment"
        read comment
        sudo usermod $username -c "$comment"
        echo "congruts user $username  password is modified"
    else
        usermodfun
        echo "user not exist"
    fi
fi
}