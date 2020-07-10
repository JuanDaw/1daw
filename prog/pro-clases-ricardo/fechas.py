def es_bisiesto(anyo):
    x = anyo % 4 == 0
    y = anyo % 100 == 0
    z = anyo % 400 == 0
    return x and (not y or (y and z))

dia = int(input('Introduce el día: '))
mes = int(input('Introduce el mes: '))
anyo = int(input('Introduce el año: '))

if mes < 1 or mes > 12:
    print('El mes debe estar comprendido entre 1 y 12.')
elif dia > 31:
    print('El día no puede ser mayor que 31.')
elif mes in {4, 6, 9, 11} and dia > 30:
    print(f'En el mes {mes}, el día no puede ser mayor que 30.')
elif mes == 2:
    if es_bisiesto(anyo) and dia > 29:
        print('En febrero de un año bisiesto, el día no puede ser mayor de 29.')
    elif not es_bisiesto(anyo) and dia > 28:
        print('En febrero de un año no bisiesto, el día no puede ser mayor de 28.')
else:
    print(f'{dia}/{mes}/{anyo}')
