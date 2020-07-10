def leibnitz():
    num = 1
    den = 1
    suma = 0
    switch = False
    while True:
        termino = num / den
        if switch:
            termino = -termino
        suma += termino
        if abs(termino) < 10 ** -4:
            break
        den += 2
        switch = not switch
    return suma * 4

print(leibnitz())
