#!/user/bin/env python3
s="(()())(())"
def removeOuterParentheses(s):
    ans=''
    start =0
    left =0
    for i,str in enumerate(s):
        print(str)
        if str=="(" :
            left +=1
        else:
            left -=1
        if left == 0 :
            ans += s[start+1:i]
            start=i+1
    print(ans) 


removeOuterParentheses(s)