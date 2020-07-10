def palindromo(cadena):
    """
    Revierte la cadena y comprueba que son iguales
    """
    minusculas = cadena.lower()

    cadena_formateada = ''

    for letra in minusculas:
        if letra.isalpha():
            cadena_formateada += letra

    res = cadena_formateada[::-1]

    return cadena_formateada == res


print(palindromo('Amar da drama.'))
print(palindromo('Hola, qué tal'))