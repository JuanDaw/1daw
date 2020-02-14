while True:
    numero = int(input('Introduce el número: '))
    if numero < 0 or numero > 10:
        print('El número debe estar comprendido entre 0 y 10')
    else:
        break

contador = -1
while contador < 10:
    contador += 1
    #Si el contador es impar:
    if contador % 2 == 1:
        continue
    print(numero, 'x', contador, '=', numero * contador)