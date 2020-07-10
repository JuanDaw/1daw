import math

def superficie(a, b, c):
    def semiperimetro():
        return (a + b + c) / 2
    sp = semiperimetro()
    s = math.sqrt(sp * (sp - a) * (sp - b) * (sp - c))
    return s

print(superficie(4, 3, 2))
