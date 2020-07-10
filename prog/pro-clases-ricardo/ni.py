import sys

try:
    c = sys.argv[1]
except IndexError:
    c = input('Introduce la cadena: ')

i = 0
cuantas = 0
while i < len(c) - 1:
    if c[i] == 'n' and c[i + 1] == 'i':
        cuantas += 1
    i += 1

print('La subcadena "ni" aparece', cuantas, 'veces')
