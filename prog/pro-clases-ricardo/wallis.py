"""
lksdjflksjflksdjfklsdjlkfjsld
"""

def wallis():
    """
    sdlfkjslfkjsdlkfjsdljflsd
    """
    num = 2
    den = 1
    pro = 1
    i = 0
    while i < 5000:
        factor = num / den
        pro *= factor
        if i % 2 == 0:
            den += 2
        else:
            num += 2
        i += 1
    return pro * 2

print(wallis())
