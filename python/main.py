#!/user/bin/env python3
import useradd as add
import userremove as rm
import addUserToGroup  as ngp
## include add remove user add group remove group and user choodse from your lis
## 
scriptinput=input("Enter 1 for adding user \nEnter 2 for remove user\nEnter 3 for adding user to agroup :")
if  scriptinput== "1":
    add.new_user()
    print("user added succesfully")
elif scriptinput== "2":
    rm.removeuser()
    print("user removed succesfully")
# elif scriptinput== "3":
#     ngp.addUsrToGroup()
#     # print("user removed succesfully")    