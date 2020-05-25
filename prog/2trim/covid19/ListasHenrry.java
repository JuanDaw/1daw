import java.util.ArrayList;
import java.util.Scanner;

//    Escribir un programa en Java que almacene una lista de cadenas que solicitará al 
//usuario y que éste deberá introducir de una en una.
// El usuario indicará mediante una cadena vacía que no quiere introducir más cadenas. 
//Finalmente, el programa deberá recorrer dicha lista mientras va creando una nueva 
//cadena que contiene la concatenación 
//de las cadenas de la lista. Explica
// en un comentario qué implementación concreta del tipo List  has usado y por qué.

//He utilizado el tipo ArrayLista , ya que almacena los elemenos dinamicamente, y no tenemos que
//que introducir una longitud especifica para la lista . Tambien he usado el el remove para borrar el ultimo
//elemento introducido que seria cuando introducimos la cadena vacia y para el programa.

public class ListasHenrry {
    public static void main(String[] args) {
        ArrayList<String> lista = new ArrayList<>();
        Scanner scanner = new Scanner(System.in);
        String palabra;

        System.out.println("Introduce una palabra . Si quieres salir no introduzcas nada");
        do {

            palabra = scanner.nextLine();
            lista.add(palabra);
            System.out.println("Introduzca otra palabra");

        } while (!palabra.isEmpty());
        scanner.close();
        lista.remove(lista.size() - 1);
        for (int i = 0; i < lista.size(); i++) {

        }

        System.out.println(lista);
    }
}