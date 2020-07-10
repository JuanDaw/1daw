def quitar_digitos(cadena):
    """
    Elimina dígitos
    """
    cadena_formateada = ''

    for letra in cadena:
        if letra.isalpha():
            cadena_formateada += letra
    return cadena_formateada


print(quitar_digitos("hkj23hk234kj1h24kj"))