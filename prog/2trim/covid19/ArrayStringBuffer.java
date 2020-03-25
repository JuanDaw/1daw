import java.util.Arrays;

public class ArrayStringBuffer {
    public static void main(String[] args) {
        StringBuffer[] array1 = {
            new StringBuffer("get"),
            new StringBuffer("money"),
            new StringBuffer("till"),
            new StringBuffer("I"),
            new StringBuffer("die")
        };

        StringBuffer[] array2 = Arrays.copyOf(array1, 5);

        array1[0] = array1[4].append("!");

        System.out.println("Este es el array1");
        for (StringBuffer n:array1) {
            System.out.println(n);
        }

        System.out.println("Este es el array2");
        for (StringBuffer n:array2) {
            System.out.println(n);
        }

        /* Al hacer copyOf se ha creado una referencia al mismo objeto almacenado en el 'heap'. array1 y array2 hacen
        referencia al mismo objeto así pues al cambiar algún elemento en array1 se cambiara también en array2 */
    }
}