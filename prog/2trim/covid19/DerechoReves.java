import java.util.ArrayList;
import java.util.Scanner;

public class DerechoReves {
    public static void main(String[] args) {

        ArrayList lista = new ArrayList();
        Scanner pedir = new Scanner(System.in);
        Scanner orden = new Scanner(System.in);
        boolean vacia = false;
        boolean opcion = false;
        String cadena;
        String cadenaFinal = "";
        int eleccion;

        System.out.println("Por favor introduzca una cadena. Introduzca una cadena vacia para terminar");

        do {
            cadena = pedir.nextLine();
            if (cadena.isEmpty()) {
                vacia = true;
            } else {
                lista.add(cadena);
                System.out.println("Por favor introduzca otra cadena");
            }
        } while (vacia == false);

        do {
            System.out.println("¿Desea la muestra de las cadenas al derecho (0) o al reves(1) ?");
            eleccion = orden.nextInt();
            if (eleccion == 0) {
                for (int i = 0; i < lista.size(); i++) {
                    cadenaFinal = cadenaFinal + " " + lista.get(i);
                    orden.close();
                    opcion = true;
                }
            } else if (eleccion == 1) {
                for (int i = lista.size(); i > 0; i--) {
                    cadenaFinal = cadenaFinal + " " + lista.get(i - 1);
                    orden.close();
                    opcion = true;
                }
            } else {
                System.out.println("Esa opcion no es valida, las opciones son 0 para al derecho o 1 para al reves");
            }

        } while (opcion == false);

        System.out.println(cadenaFinal);
    }
}