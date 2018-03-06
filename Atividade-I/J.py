c1, c2, c3, f1, f2, f3 = raw_input().split()
c1 = int(c1)
c2 = int(c2)
c3 = int(c3)
f1 = int(f1)
f2 = int(f2)
f3 = int(f3)

if c1 > f1:
    print("C")
else:
    if f1 > c1:
        print("F")
    else :
        if f1 == c1 & f3 > c3:
            print("F")
        else :
            if f1 == c1 & c3 > f3:
                print("C")
            else:
                print("=")
