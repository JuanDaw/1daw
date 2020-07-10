"""
sdlkfjslkdjflksdjflksdjflksjklf
"""

hanoi = lambda n, a, b, c: '' if n == 0 else \
          hanoi(n - 1, a, c, b) + \
          'muevo 1 disco de ' + str(a) + ' a ' + str(b) + '\n' + \
          hanoi(n - 1, c, b, a)
