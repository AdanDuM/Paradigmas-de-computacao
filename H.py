n = int(input())

distancia = 0
i = 0
while i < n:
    t, v = raw_input().split()
    t = int(t)
    v = int(v)
    distancia = distancia + (t*v)
    i = i + 1
    
print(distancia)
