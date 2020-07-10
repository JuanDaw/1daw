"""
El programa que saluda.
"""

salir = False
while not salir:
    nombre = input('Introduce tu nombre: ')
    if nombre != 'Eduardo':
        print('Hola')
    else:
        salir = True
print('Se acabó')
