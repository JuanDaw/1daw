import java.util.ArrayList;
import java.util.Scanner;

public class Listas2 {
    public static void main(String[] args) {

        /*
         * He usado ArrayList ya que puede aumentar su tamaño dependiendo de las cadenas
         * introducidas por el usuario. También permite comprobar los tipos de datos en
         * tiempo de compilación. Con el método add() es fácil añadir nuevos elementos,
         * con el método remove() eliminamos la última cadena vacía introducida por el
         * usuario y con la ayuda del método trimToSize() ajustamos el tamaño del
         * ArrayList para evitar el uso innecesario de memoria. Por último recorro el
         * ArrayList con el método size() para ir obteniendo elemento a elemento con el
         * método get() para luego mostrar por pantalla.
         */

        ArrayList<String> list = new ArrayList<>();
        Scanner sc = new Scanner(System.in);
        String string;
        String stringFinal = "";

        System.out.println("Introduce una cadena. Para finalizar introduce una cadena vacía: ");

        do {
            string = sc.nextLine();
            list.add(string);
            System.out.println("Introduce otra cadena: ");
        } while (!string.isEmpty());

        sc.close();
        list.remove(list.size() - 1);
        list.trimToSize();

        for (int i = 0; i < list.size(); i++) {
            stringFinal = stringFinal + list.get(i);
        }

        System.out.println(stringFinal);
    }
}