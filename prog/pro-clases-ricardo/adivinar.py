import random

# random.seed()
aleatorio = random.randint(0, 99)

while True:
    try:
        numero = int(input('Introduce un número: '))
        if numero == aleatorio:
            print('¡Acertaste!')
            break
        elif numero < aleatorio:
            print('Es demasiado pequeño.')
        else:
            print('Es demasiado grande.')
    except ValueError:
        print('El número introducido no es correcto.')