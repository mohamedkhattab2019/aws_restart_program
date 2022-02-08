#!/user/bin/env python3
# dynamic debuging
def user_age():
    age=int(input("Enter age:"))
    assert age > 0 ,"this is invalid"
    print(f"youre age is {age}")
user_age()    