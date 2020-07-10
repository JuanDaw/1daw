# inversa = lambda l: [] if l == [] else \
#     inversa(l[1:]) + [l[0]]

# print(inversa([1, 2, 3, 4]))

from functools import reduce
inversa = lambda l: reduce(lambda acc, x: [x] + acc, l, [])

print(inversa([1, 2, 3, 4]))