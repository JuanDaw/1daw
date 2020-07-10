def fact(n):
    res = 1
    i = 1
    while i <= n:
        res *= i
        i += 1
    return res

for j in range(6):
    print(str(fact(j)).center(8, '*'))

fac_rec = lambda n: 1 if n == 0 else n * fac_rec(n - 1)
