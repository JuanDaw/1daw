import sys
lista = sys.argv[1:]

acc, i = 0, 0
while i < len(lista):
    acc += int(lista[i])
    i += 1
print('La suma vale', acc)
