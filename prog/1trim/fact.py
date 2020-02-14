from functools import reduce
fact = lambda n: reduce(int.__mul__, range(1, n + 1), 1)

numero = int(input('Introduzca el número:'))
print('El factorial de', numero, 'es', fact(numero)) if numero >= 0 \
    else print('El número introducido es incorrecto')