def isograma(cadena):
    """
    Comprueba que no tiene letras repetidas
    """
    cadena = cadena.lower()
    check = set()
    for letra in cadena:
        if letra == ' ':
            continue
        if letra in check:
            return False
        else:
            check.add(letra)
    return True


def isograma(cadena):
    cadena = cadena.lower()
    for i in range(len(cadena)):
        letra = cadena[i]
        if letra == ' ':
            continue
        if letra in cadena[i + 1:]:
            return False
    return True


print(isograma('camino'))
print(isograma('manolo'))
print(isograma('Ricardo'))
print(isograma('a b c'))