import math

def superficie(a, b, c):
    sp = (a + b + c) / 2
    return = math.sqrt(sp * (sp - a) * (sp - b) * (sp - c))

print(superficie(4, 3, 2))