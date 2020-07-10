def dict2list(dic):
    """
    Ejercicio 1
    """
    m = -1
    for k, v in dic.items():
        m = max(m, k)
    l = []
    for i in range(m + 1):
        l.append(None)
    for k, v in dic.items():
        l[k] = v
    return l

def sobre(m, n):
    """
    Ejercicio 2
    """
    if m == 0 and n > 0:
        return 0
    elif m >= 0 and n == 0:
        return 1
    return sobre(m - 1, n - 1) + sobre(m - 1, n)

def lista_sobre_A(ultima_fila):
    """
    Ejercicio 3
    """
    if ultima_fila == 0:
        return [[1]]
    res = lista_sobre_A(ultima_fila - 1)
    f1 = [0] + res[-1]
    f2 = res[-1] + [0]
    fila = []
    for i, n in enumerate(f1):
        fila.append(n + f2[i])
    res.append(fila)
    return res

def triangulo_A(numero_filas):
    """
    Ejercicio 4
    """
    for fila in lista_sobre_A(numero_filas - 1):
        for i, num in enumerate(fila):
            fila[i] = f' {num:5}'
        print(''.join(fila).center(60))
