n = int(input())
lista = raw_input().split()

menor = 0
for num in lista:
    if num < menor:
        menor = int(num)
    else:
        menor = int(num)
print(menor)
