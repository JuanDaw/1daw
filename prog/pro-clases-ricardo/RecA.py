from math import sqrt

def insertar(elem, tpl):
    ret = {(elem,) + tpl}
    for i in range(1, len(tpl) + 1):
        ret.add(tpl[:i] + (elem,) + tpl[i:])
    return ret

def producto(v, w):
    if v == [] or w == []:
        return 0.0
    return v[0] * w[0] + producto(v[1:], w[1:])

def norma(v):
    return sqrt(sum([z ** 2 for z in v]))

def permutaciones(tpl):
    if len(tpl) <= 1:
        return {tpl}
    ret = set()
    for p in permutaciones(tpl[1:]):
        ret |= insertar(tpl[0], p)
    return ret