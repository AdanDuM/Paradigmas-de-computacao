import sys
lista = sys.stdin.readline().split()

maior = 0
for i in lista:
    if maior < i:
        maior = i
print(maior)
