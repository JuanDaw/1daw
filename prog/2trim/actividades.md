1. Escribir un programa Java que a partir del valor de uan variable 'x' entera, escriba lo siguiente:
- si x es 0 o 1, debe escribir "menor que 2".
- si x es 2, debe escribir "vale 2".
- si es 3, 5 o 6, debe escribir "No es 4".
- en caso contrario, escribir "otra cosa".
### Con switch
```java
public class Actividad1 {
    public static void main(String[] args) {
        int x = 5;

        switch (x) {
            case 0:
            case 1:
                System.out.println("menor que 2");
                break;

            case 2:
                System.out.println("vale 2");
                break;

            case 3:
            case 5:
            case 6:
                System.out.println("no es 4");
                break;

            default:
                System.out.println("otra cosa");
        }

    }
}
```
### Con if
```java
public class Actividad2 {
    public static void main(String[] args) {
        int x = 5;

        if (x == 0 || x == 1) {
            System.out.println("menor que 2");
        } else if (x == 2) {
            System.out.println("vale 2");
        } else if (x == 3 || x == 5 || x == 6) {
            System.out.println("no es 4");
        } else {
            System.out.println("otra cosa");
        }

    }
}
```
2. Escribir un programa JAVA para operar con(Una versión con enteros y otra versión con reales):
- Primer operando: 5
- Operación: *
- Segundo operando : 7
- Resultado: 35

```java

```

3. 