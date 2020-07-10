divisores = lambda n: divisores_iter(n, 1, 1)
divisores_iter = lambda n, cont, acc: acc if cont == n else \
     divisores_iter(n , cont + 1, acc + (1 if n % cont == 0 else 0))
es_primo = lambda n: divisores(n) == 2
son_primos = lambda l: list(filter(es_primo, l))

from functools import reduce
suma = lambda l: reduce(lambda x, y: x + y, l, 0)