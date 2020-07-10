import random

def rellenar_izquierda(numero, digitos, relleno):
    pass

def generar_objetivo(digitos):
    """
    Genera aleatoriamente un objetivo, consistente en
    un número entero con el número de dígitos indicado en el
    parámetro.
    """
    return f"{random.randint(0, 10 ** digitos - 1):0{digitos}}"

def pedir_intento(digitos):
    """
    Pide un intento al usuario.

    El intento debe ser un número entero de no más de 'digitos' dígitos.
    """
    while True:
        try:
            intento = int(input('Introduzca su nuevo intento: '))
            intento = str(f"{intento:0{digitos}}")
            if len(intento) > digitos:
                print('El intento no debe tener más de', digitos, 'dígitos.')
            else:
                break
        except ValueError:
            print('El intento debe ser un número entero')
    return intento

def digitos_correctos(objetivo, intento):
    correctos = 0
    for i in range(len(objetivo)):
        if objetivo[i] == intento[i]:
            correctos += 1
    return correctos

def digitos_descolocados(objetivo, intento):
    def digito_correcto(posicion):
        return objetivo[posicion] == intento[posicion]
    descolocados = 0
    for i in range(len(intento)):
        if digito_correcto(i):
            continue
        for j in range(len(objetivo)):
            if i != j and intento[i] == objetivo[j]:
                descolocados += 1
                break
    return descolocados

objetivo = generar_objetivo(4)
gano = False
for intentos in range(10):
    intento = pedir_intento(4)
    correctos = digitos_correctos(objetivo, intento)
    if correctos == 4:
        gano = True
        break
    else:
        print('Tiene', correctos, 'dígitos correctamente colocados.')
        descolocados = digitos_descolocados(objetivo, intento)
        print('Tiene', descolocados, 'dígitos que están pero no en su sitio.')
if gano:
    print('¡Ganó!')
else:
    print('¡Perdió! El objetivo era', objetivo, '.')
