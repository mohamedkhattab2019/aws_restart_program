#!/user/bin/env python3
import logging
logging.basicConfig(level=logging.DEBUG,filename='code.log') 
#EROR debug only if exist error
#debug debug with every logging.debug


def add(x,y):
    # assert x==y,"nooooooo"
    return x+y


def substract(x,y):
    return x-y    

def multiply(x,y):
    return x*y 
def devide(x,y):
    return x/y     

num_1=10
num_2=0
add_result=add(num_1,num_2)
logging.debug('Add:{}+{}={}'.format(num_1,num_2,add_result))
div_result=devide(num_1,num_2)
logging.debug('div:{}/{}={}'.format(num_1,num_2,div_result))


