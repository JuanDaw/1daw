import java.util.Arrays;
import java.util.InputMismatchException;
import java.util.NoSuchElementException;
import java.util.Scanner;

public class Creciente {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int[] array = new int[5];
        int valor;
        int indice = 0;

        try {
            for (;;) {
                try {
                    System.out.print("Introduce un número: ");
                    valor = scanner.nextInt();
                    if (valor == 0) {
                        break;
                    }
                    if (array.length == indice) {
                        array = Arrays.copyOf(array, array.length + (array.length / 2));
                    }
                    array[indice++] = valor;
                } catch (InputMismatchException e) {
                    System.err.println("Deben ser números enteros.");
                    scanner.nextLine();
                } catch (NoSuchElementException e) {
                    System.err.println("Faltan datos.");
                    return;
                }
            }
        } finally {
            scanner.close();            
        }

        for (int n : array) {
            System.out.println(n);
        }
    }
}
