# Suma los elementos de una lista
#suma = lambda l: 0 if l == [] else l[] + suma([1:])
#suma = lambda l: suma_ier(l, 0)
#suma_iter = lambda l, acc: acc if l == [] else \
#                           suma_iter(l[1:], acc + l[0])

cantidad = int(input('Introduce cantidad de números(0 para terminar): '))
lista = []
while True:
    numero = int(input('Introduce cantidad de números(0 para terminar): '))
    if numero == 0:
        break
    lista.append(numero)

acc, i = 0, 0
while i < len(lista):
    acc += lista[i]
    i += 1
print('la suma vale', acc)