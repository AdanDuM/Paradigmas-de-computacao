n = int(input())
p, c, q = raw_input().split()
p = int(p)
q = int(q)

if c == '+':
    if p+q <= n:
        print("OK")
    else:
        print("OVERFLOW")

if c == "*":
    if p*q <= n:
        print("OK")
    else:
        print("OVERFLOW")
