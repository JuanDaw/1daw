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

## Clases 'wrapper'
- int -> Integer
- float -> Float
- double -> Double
- boolean -> Boolean
- char -> Character
- long -> Long
- short -> Short
- byte -> Byte

```java
// Ambas líneas hacen lo mismo
Integer i = New Integer(5)
Integer i = Integer.valueOf(5)
```
```java
// Intenta convertir una cadena a 'int'
Integer.parseInt("25")
```
```java
public static Number suma (Number x, Number y) {
    return x + y;
}
```
## Boxing/unboxing
- Boxing consiste en meter en un objeto de la clase wrapped un valor primitivo.  
De un valor primitivo obtenemos un objeto de la clase wrapped.
```java
// int 5 -> Integer
Integer i = 5;
```
- Teniendo un objeto de la clase wrapped, lo saca, obteniendo un valor primitivo.  
De un objeto de la clase wrapped obtenemos un valor primitivo.
```java
int j = i;
```

```java
public class Prueba {
    public static void main(String[] args) {
        int res;

        res = suma(5, 4);

        // Conversión implícita
        // res = (int) suma(5, 4);

        System.out.println(res);
    }

    public static int suma(int x, int y) {
        return x + y;
    }
}
```
```java
public class Prueba {
    public static void main(String[] args) {
        // El 'int' recibido de la suma y almacenado en 'res' pasa a ser 'Number'
        Number res;

        // hace 'boxing' al sumar y devuelve un 'int'
        res = suma(5, 4);

        System.out.println(res);
    }

    public static long suma(int x, int y) {
        return x + y;
    }
}
```
```java
public class Prueba {
    public static void main(String[] args) {
        imprime(5);
        imprime(null);
    }

    public static void imprime(Object x) {
        System.out.println(x);
    }
}
```
## Tipos de estructuras de programción
- Secuencial  
Se ejecuta de manera secuencial. Su estructura van entre '{}'.
Donde se espera una sentencia se puede poner un bloque.
- Alternativa

- Repetitiva

```java
// x = 4 * 3
switch (x) {
    case 5:
    case 6:
        System.out.println("Vale 5 o 6");
        break;

    case 12:
        System.out.println("Vale 12");
        break;

    default:
        System.out.println("No vale ni 5 ni 12");
}
```
## Entrada/Salida
'in' (InputStream)-> Entrada estándar del S.O.  
'out' (PrintStream)-> Salida estándar del S.O.  
'err' (PrintStream)-> Salida estándar de errores.
- Salida  
```java
System.out.println("...");
```
La clase 'System' tiene 'in', 'out' y 'err'
- Entrada  
System.in usualmente la utilizaremos con java.util.Scanner (No está en el paquete java.lang)
```java
System.in
```
## Estructuras de control repetitivas
```java
while (condicion) {
    ...
    ...
    ...
}
```
```java
for (inicializaciñón; condición; actualización) {
    ...
    ...
    ...
}

// Ejemplo

for (i = 0; i <= 10; i ++) {
    ...
    ...
    ...
}

// Bucle infinito

for ( ; ; ) {

}
```
EQUIVALE A:
```java
inicialización;
while (condición) {
    cuerpo
    actualización;
}
```
```java
// Comprueba la condición al final de la iteración
// Al menos una vez se ejecuta el bloque de código
do {

} while (condición);
```
EQUIVALE A:
```java
inicialización;
while (condición) {
    cuerpo
    actualización;
}
```
## Capturar excepciones
´´´java
try {
    ...
    ...
} catch () {
    ...
    ...
}
´´´
## Métodos Scanner
"nextInt()" y "next()" no consume los delimitadores finales  
"nextLine()" si consume el '\n' final