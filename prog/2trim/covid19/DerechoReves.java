import java.util.ArrayList;
import java.util.Scanner;

public class DerechoReves {
    public static void main(String[] args) {

        ArrayList<String> list = new ArrayList<>();
        Scanner sc = new Scanner(System.in);
        Scanner sort = new Scanner(System.in);
        boolean stringEmpty = false;
        boolean opcion = false;
        int choice;
        String string;
        String stringFinal = "";

        System.out.println("Por favor introduzca una cadena. Introduzca una cadena vacia para terminar");

        while (!stringEmpty) {
            string = sc.nextLine();
            if (string.isEmpty()) {
                list.trimToSize();
                sc.close();
                stringEmpty = true;
            } else {
                list.add(string);
                System.out.println("Introduce otra cadena: ");
            }
        }

        while (!opcion) {
            System.out.println(
                    "¿Desea que muestre las cadenas en el orden en el que se han introducido(0), o bien en el orden contrario(1)?");
            choice = sort.nextInt();
            if (choice == 0) {
                for (String e : list) {
                    System.out.println(e);
                    opcion = true;
                }
            } else if (choice == 1) {
                for (String e : list) {
                    System.out.println();
                }
            } else {
                System.out.println("Opción erronea. Introduce 0 para mostrar al derecho o 1 para mostrar al revés");
            }
        }

        // do {
        // cadena = pedir.nextLine();
        // if (cadena.isEmpty()) {
        // vacia = true;
        // } else {
        // lista.add(cadena);
        // System.out.println("Por favor introduzca otra cadena");
        // }
        // } while (vacia == false);

        // do {
        // System.out.println("¿Desea la muestra de las cadenas al derecho (0) o al
        // reves(1) ?");
        // eleccion = orden.nextInt();
        // if (eleccion == 0) {
        // for (int i = 0; i < lista.size(); i++) {
        // cadenaFinal = cadenaFinal + " " + lista.get(i);
        // orden.close();
        // opcion = true;
        // }
        // } else if (eleccion == 1) {
        // for (int i = lista.size(); i > 0; i--) {
        // cadenaFinal = cadenaFinal + " " + lista.get(i - 1);
        // orden.close();
        // opcion = true;
        // }
        // } else {
        // System.out.println("Esa opcion no es valida, las opciones son 0 para al
        // derecho o 1 para al reves");
        // }

        // } while (opcion == false);

        System.out.println(stringFinal);
    }
}