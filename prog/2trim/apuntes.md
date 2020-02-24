# Apuntes
## Override, Redefinir, Sobreescribir
**Signatura** no cambia, cambia el cuerpo.  
Muchas sentencias en varias líneas de código encerradas entre llaves forman un "bloque".
## Convertir, Casting
<code>(Contador) obj <= NARROWING</code>
## Operadores lógicos en JAVA
    AND -> &&
    OR -> ||
    NOT -> !
En python == denota igualdad y 'is' idéntico
En java <code>==</code> denota ser idénticos
JAVA

## Primitivo
Igualdad '=='
Identidad
## Referencias
Igualdad 'equals'
Identidad '=='

## Polimorfismo

## @Overloaded(Sobrecarga)

Siempre que obtengamos argumentos de una clase padre previamente definida tiene que obtener TODOS los argumentos.

## Covarianza
En clases referentes se puede sobreescribir(Override) cambiando el tipo de argumento que devuelves.

## String:
- Objetos inmutables  

's' y 'w' en el primer caso hacen referencia al mismo bloque de memoria que contiene la cadena "Hola" en el *depósito de cadenas*.
```java
String s = "Hola";
String w = "Hola";

s == w -> True
```
En el segundo caso 's' y 'w' son literales diferentes apuntando a bloques 'String' diferentes en el 'heap'(montículo) donde estos a su vez apuntan al **mismo** bloque de memoría en el *depósito de cadenas*.
```java
String s = new String("Hola");
String w = new String("Hola");

s == w -> False
```