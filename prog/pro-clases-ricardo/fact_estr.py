# fact = lambda n: 1 if n == 0 else n * fact(n - 1)

def fact(n):
    if n == 0:
        return 1
    else:
        return n * fact(n - 1)

res = fact(0)
print(res)