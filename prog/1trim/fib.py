while True:
    try:
        numero = int(input('Introduce el número: '))
        break
    except ValueError:
        print('Error: se ha introducido un número incorrecto')

cont = numero
a, b = 1, 0
while cont > 0:
    a, b = a + b, a
    cont -= 1
print('El fibonacci de', numero, 'es', b)