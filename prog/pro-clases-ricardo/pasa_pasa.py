def pasa_pasa(numeros):
    # Extrae el último dígito del primer número
    ultimo = numeros[0] % 10
    # Dividimos entre 10 y nos quedamos con la parte entera
    numeros[0] = int(numeros[0] / 10)
    # Multiplicamos por 10 para añadir un hueco para luego sumarle "ultimo"
    numeros[1] = numeros[1] * 10 + ultimo


def invierte(numeros):
    # Mientras el primer número no sea 0
    while numeros[0] != 0:
        # Imprime la lista con los números
        print(numeros)
        # Ejecuta la función "pasa_pasa"
        pasa_pasa(numeros)
    # Cuando el primer número de la lista queda vacio(= 0)
    # imprime la lista con los números
    print(numeros)