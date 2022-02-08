#!/user/bin/env python3
""""this is add user function"""
import os
def new_user():
    """"this is add user function"""
    confirm = "N"
    while confirm != "Y":
        username = input("Enter the name of the user to add: ")
        print("Use the username '" + username + "'? (Y/N)")
        confirm = input().upper()
    os.system("sudo useradd " + username)