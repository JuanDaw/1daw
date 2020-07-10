"""
sdflkjsdflkjsdlkfjsdlkfjsldk
"""

from functools import reduce
fact = lambda n: reduce(int.__mul__, range(1, n + 1), 1)

numero = int(input('Introduzca el número: '))
if numero >= 0:
    print('El factorial de', numero, 'es', fact(numero))
else:
    print('El número introducido es incorrecto')
