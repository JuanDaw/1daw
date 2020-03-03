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
## Metodos 'String'

```java
String s = "hola";

// Devuelve un 'String' que es un 'substring' del 'String'
s.substring​(int beginIndex)
s.substring​(int beginIndex, int endIndex)

// Convierte el 'String' a minúsculas
s.toLowerCase()

// Convierte el 'String' a mayúsculas
s.toUpperCase()

// Convierte cualquier 'Object' a 'String'
s.toString()
```

## API
- métodos
- constantes (fianles)
- atributos
- miembros estáticos
    - métodos
    - atributos

## StringBuilder y StringBuffer
La diferencia es que StringBuffer es thread-safe y no tiene problemas de race conditions. StringBuilder no es thread-safe lo que le supone una posible sobrecarga.  
En el 90% de los programas se utiliza StringBuilder.  
La capacidad de ambos es de 16 caracteres. Podemos definir una capacidad distinta
```java
StringBuilder sb = new StringBuilder(200);
```
Podemos reducir la capacidad del StringBuilder a la longitud actual con el siguiente método
```java
sb.trimToSize()
```
Ambos métodos son 'costosos', hay que intentar evitar ambos procesos.  
DIFERENCIA ENTRE:
```java
// Se asegura que se crea un nuevo objeto 'String'
(new String(sb)).equals("hola")
// En este caso no se garantiza que se cree un nuevo objeto 'String'. Es posible que en String pool hubiera ya una cadena que coincidiera con la cadena 'sb' no creando un nuevo 'String'
sb.toString().equals("hola")
```
