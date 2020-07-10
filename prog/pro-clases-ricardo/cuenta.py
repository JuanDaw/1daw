class Deposito:
    def __init__(self, fondos):
        self.__fondos = fondos

    def retirar(self, cantidad):
        if cantidad > self.__fondos:
            return 'Fondos insuficientes'
        self.__fondos -= cantidad
        return self.__fondos

    def ingresar(self, cantidad):
        self.__fondos += cantidad
        return self.__fondos

    def saldo(self):
        return self.__fondos

dep = Deposito(100)
