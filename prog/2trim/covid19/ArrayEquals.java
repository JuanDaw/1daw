import java.util.Arrays;

public class ArrayEquals {
    public static void main(String[] args) {
        int array1[] = { 1, 2, 3, 4 };
        int array2[] = { 1, 2, 3, 4 };

        System.out.println("¿Son el mismo objeto (==)? ... " + (array1 == array2));
        System.out.println("¿Tienen el mismo contenido (equals)? ... " + Arrays.equals(array1, array2));

        // array1 es un objeto distinto a array2 por lo tanto no son idénticos pero si
        // iguales entre si

        array2 = array1;

        System.out.println("¿Son el mismo objeto (==)? ... " + (array1 == array2));
        System.out.println("¿Tienen el mismo contenido (equals)? ... " + Arrays.equals(array1, array2));

        // array2 pasa a ser el mismo objeto que array1 por lo tanto son idénticos e
        // iguales entre si
    }
}