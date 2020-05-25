import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

public class DerechoReves {
    public static void main(String[] args) {

        ArrayList<String> list = new ArrayList<>();
        Scanner sc = new Scanner(System.in);
        String choice;
        String string;

        System.out.println("Introduce una cadena. Para finalizar introduce una cadena vacía: ");

        do {
            string = sc.nextLine();
            list.add(string);
            System.out.println("Introduce otra cadena: ");
        } while (!string.isEmpty());

        list.remove(list.size() - 1);
        list.trimToSize();

        System.out.println(
                "¿Desea que muestre las cadenas en el orden en el que se han introducido(0), o bien del revés(1)?");
        choice = sc.nextLine();
        sc.close();

        if (choice.equals("0")) {
            for (String e : list) {
                System.out.println(e);
            }
        } else if (choice.equals("1")) {
            Collections.reverse(list);
            for (String e : list) {
                System.out.println(e);
            }
        } else {
            System.out.println("Opción no valida");
        }
    }
}