#!/user/bin/env python3
from asyncio import subprocess
import os
from sys import stdout 
def addUsrToGroup():
    username=input("Enter the name of the user you want to add to group: ")
    output=subprocess.Popen('groups',stdout=subprocess.PIPE).communicate()[0]
    print("Enter a list of groups to add the user to")
    print("The list should be separated by spaces, for example:\r\n group1 group2 group3")
    print("The available groups are:\r\n " + output)
    chosenGroups = str(input("Groups: "))