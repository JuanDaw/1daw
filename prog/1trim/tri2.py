#leer número
while True:
    try:
        n = int(input('Introduce el número: ')) #pedir el número
        if n >= 1:
            break
        else:
            print('El número debe ser mayor que cero.')
    except ValueError:
        print('Debe ser un número válido')
#ir calculando los números triangulares
i = 1
tri1 = 1
tri2 = 3
while True:
    if n == tri1 or n == tri2:
        print('Es un número triangular')
        break
    elif tri1 < n and n < tri2:
        print(n, 'está comprendido entre', tri1, 'y', tri2)
        break
    i += 1
    tri1 = tri2
    tri2 += i