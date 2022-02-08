function userAddfun ()
{
   
echo "Please enter username"
read username
grep -q "$username" /etc/passwd
if [ $? -eq 0 ]
then
echo "user exist "
userAddfun
else
echo "please enter password"
read -s password
sudo useradd  $username -p $password   
echo "congruts user $username is created"
fi
}

