#!/user/bin/env python3
#*args    unlimited number of args passes for fuction
# def add(*num):
#     result=0
#     for n in num:
#         result+=n
#     print(f"sum is{result}")
    
# add(5,6,6)    



#**keyargs    unpacking
# def add(num):
#     print(num)
#     result=0
#     for n in num:
#         result+=n
#     print(f"sum is{result}")
# list1=[5,6,6]    
# add(list1)   

def mySkills(**skills):
    print(type(skills))
    print("This are my skills")
    for name,skill in skills.items():
        print(skill)
# dict1={"coursename"="linux","coursename2"="python"}
mySkills(coursename="linux",coursename2="python")


# import math
# import from math pi as P 
# print(P)
import os