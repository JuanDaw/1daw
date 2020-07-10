quitar_digitos = lambda c: '' if c == '' else \
    quitar_digitos(c[1:]) if c[0].isdigit() else \
    c[0] + quitar_digitos(c[1:])

print(quitar_digitos("hkj23hk234kj1h24kj"))