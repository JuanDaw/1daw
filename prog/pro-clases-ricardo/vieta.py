import math


def vieta():
    num = 2
    den = math.sqrt(2)
    pro = 1
    while True:
        factor = num / den
        pro = pro * factor
        if factor < 1 + 10**-5:
            break
        den = math.sqrt(2 + den)
    return pro * 2


print(vieta())