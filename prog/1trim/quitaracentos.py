def sustituye4(cadena, sust):
    lista = list(cadena)
    for i, c in enumerate(lista):
        if c in sust:
            lista[i] = sust[c]
        return ''.join(lista)

print(sustituye4('á', {'á': 'a', 'é': 'e', 'í': 'i', 'ó': 'o', 'ú': 'u',}))