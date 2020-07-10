# Calcula el n-ésimo número triangular:

while True:
    try:
        n = int(input('Introduce el número: '))
        if n >= 1:
            break
        else:
            print('El número debe ser mayor que cero.')
    except ValueError:
        print('Debe ser un número válido.')

i, triangular = 1, 0
while i <= n:
    triangular += i
    i += 1
print('El número triangular correspondiente sería', triangular)
