from goto import with_goto

CODIGO = """
a = int(input('Introduce el primer sumando: '))
b = int(input('Introduce el segundo sumando: '))
label .inicio
if a == 0: goto .fin
a -= 1
b += 1
goto .inicio
label .fin
print('La suma vale', b)
"""

exec(with_goto(compile(CODIGO, '', 'exec')))
