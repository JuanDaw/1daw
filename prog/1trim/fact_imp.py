#fact = lambda n: 1 if n == 0 else n * fact(n - 1)
fact = lambda n: fact_iter(n, 1)
fact_iter = lambda n, acc: acc if n == 0 else fact_iter(n - 1, acc * n)

num = int(input('Introduce el número: '))
if num >= 0:
    acc = 1
    n = num
    while n > 0:
        n, acc = n - 1, acc * n
    print('El factorial de', num, 'es', acc)
else:
    print('El número tiene que ser un entero positivo')