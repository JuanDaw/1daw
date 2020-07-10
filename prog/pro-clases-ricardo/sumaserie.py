def fact(n):
    res = 1
    i = n
    while i >= 1:
        res *= i
        i -= 1
    return res

n = int(input('Introduce el valor de n: '))
suma, i = 0, 1
while i <= n:
    suma += i / (1 + fact(i))
    i += 1
print('La suma vale', suma)
