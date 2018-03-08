n = int(input())
lista = raw_input().split()

menor = -1
for num in lista:
    if num < menor or menor == -1:
        menor = int(num)
    else:
        menor = int(num)
print(menor)
