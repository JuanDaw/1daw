lista = []
while True:
    numero = int(input('Introduce un número (0 para terminar): '))
    if numero == 0:
        break
    lista.append(numero)

acc, i = 0, 0
while i < len(lista):
    acc += lista[i]
    i += 1
print('La suma vale', acc)
