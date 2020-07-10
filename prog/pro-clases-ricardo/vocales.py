def vocales(cadena):
    return {'a', 'e', 'i', 'o', 'u'} <= set(cadena)

print(vocales('murcielago'))
print(vocales('manolo'))
