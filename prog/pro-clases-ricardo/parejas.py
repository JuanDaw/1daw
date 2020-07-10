"""
def pareja(x, y):
    return [x, y]

def select(p, n):
    return p[n]
"""

def pareja(x, y):
    def get(n):
        if n == 0:
            return x
        elif n == 1:
            return y
    return get

def select(p, n):
    return p(n)



def deposito(fondos):
    def deposito_local(cantidad):
        nonlocal fondos
        if cantidad > fondos:
            return 'Fondos insuficientes'
        fondos -= cantidad
        return fondos
    
    return deposito_local


