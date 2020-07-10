def recorrer(iterable):
    it = iter(iterable)
    while True:
        try:
            siguiente = next(it)
            print(siguiente)
        except StopIteration:
            break

cadena = input('Introduce la cadena: ')
recorrer(cadena)
