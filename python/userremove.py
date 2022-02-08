#!/user/bin/env python3
import os
def removeuser():
    confirm = "N" 
    while confirm != "Y":
        username = input("Enter the name of the user to remove: ")
        print("Use the username '" + username + "'? (Y/N)")
        confirm=input().upper()
    os.system("sudo userdel  "+username)     