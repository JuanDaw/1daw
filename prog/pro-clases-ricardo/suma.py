cantidad = int(input('Introduce cantidad de números: '))
lista = []
while cantidad > 0:
    numero = int(input('Introduce el siguiente número: '))
    lista.append(numero)
    cantidad -= 1

acc, i = 0, 0
while i < len(lista):
    acc += lista[i]
    i += 1
print('La suma vale', acc)
