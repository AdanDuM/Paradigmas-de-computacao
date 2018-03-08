n = int(input())

coposQuebrados = 0
i = 0
while i < n:
    l, c = raw_input().split()
    l = int(l)
    c = int(c)
    if l > c:
        coposQuebrados = coposQuebrados + c
    i = i + 1
print(coposQuebrados)
