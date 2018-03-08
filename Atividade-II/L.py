a, b, c = raw_input().split()

a = int(a)
b = int(b)
c = int(c)

if a < 2 or b < 3 or c < 5:
    print(0)
else:
    a = a / 2
    b = b / 3
    c = c / 5

    if a <= b and b <= c:
        print(a)
    else:
        if b <= a and a <= c:
            print(b)
        else:
            print(c)
