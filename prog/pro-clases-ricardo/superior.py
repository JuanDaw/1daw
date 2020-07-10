def multiplica(n):
    return lambda k: n * k

triplica = multiplica(3)
print(triplica(5))
