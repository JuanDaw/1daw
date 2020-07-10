def fact(n):
    """
    Calcula el factorial de un número.

    Parámetros:

       n: el número del que se desea calcular el factorial.

    Devuelve:

       n! (el factorial del argumento)
    """
    def fact_iter(acc):
        nonlocal n
        if n == 0:
            return acc
        else:
            acc *= n
            n -= 1
            return fact_iter(acc)
    return fact_iter(1)

print(fact(5))