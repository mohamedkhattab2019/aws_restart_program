function userdelfunc()
{
echo "Please Enter user name"
read username
sudo userdel $username
echo "congruts user $username is deleted"
}