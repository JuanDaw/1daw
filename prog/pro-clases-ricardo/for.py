for i in range(10, 10):
    print(i)

it = iter(range(10, 10))
fin = False
while not fin:
    try:
        i = next(it)
    except StopIteration:
        fin = True
    else:
        print(i)
