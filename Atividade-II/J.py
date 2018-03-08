c1, c2, c3, f1, f2, f3 = raw_input().split()
c1 = int(c1)
c2 = int(c2)
c3 = int(c3)
f1 = int(f1)
f2 = int(f2)
f3 = int(f3)

scoreC = c1*3 + c2
scoreF = f1*3 + f2

if scoreC > scoreF:
    print("C")
elif scoreF > scoreC:
    print("F")
elif scoreF == scoreC:
    if c3 > f2:
        print("C")
    elif f2 > c2:
        print("F")
    else:
        print("=")
