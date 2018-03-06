n = int(input())
a,l,p = raw_input().split();
a = int(a)
l = int(l)
p = int(p)

if(n < a and n < l and n < p):
    print("S")
else:
    print("N")
