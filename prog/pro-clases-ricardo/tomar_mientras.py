tomar_mientras = lambda cond, lista: list(filter(cond, set(lista)))

print(tomar_mientras(lambda x: x < 5, [1, 4, 6, 4, 1]))

# Para eliminar los elementos duplicados en la lista
# la convertimos a tipo "set"
# Con la función "filter" aplicamos la condición como primer argumento
# en el segundo argumento se le pasa la lista