def sustituye(cadena, sust):
    res = ''
    for c in cadena:
        if c in sust:
            res += sust[c]
        else:
            res += c
    return res

def sustituye2(cadena, sust):
    res = ''
    for c in cadena:
        v = sust.get(c)
        if not v is None:
            res += v
        else:
            res += c
    return res

def sustituye3(cadena, sust):
    lista = list(cadena)
    for i in range(len(lista)):
        c = lista[i]
        if c in sust:
            lista[i] = sust[c]
    return ''.join(lista)

def sustituye4(cadena, sust):
    lista = list(cadena)
    for i, c in enumerate(lista):
        if c in sust:
            lista[i] = sust[c]
    return ''.join(lista)

print(sustituye4('BOCA', {'A': '4', 'B': '3', 'O': '0'}))
