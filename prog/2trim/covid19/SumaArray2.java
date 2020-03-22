import java.util.InputMismatchException;
import java.util.NoSuchElementException;
import java.util.Scanner;

public class SumaArray2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int array[] = new int[5];
        int total = 0;

        try {
            for (int contador = 0; contador < array.length; contador++) {
                System.out.print("Introduce un número: ");
                array[contador] = scanner.nextInt();
            }
        } catch (InputMismatchException e) {
            System.err.println("Debes introducir números enteros.");
            scanner.nextLine();
        } catch (NoSuchElementException e) {
            System.err.println("Faltan datos.");
            return;
        } finally {
            scanner.close();
        }

        for (int n:array) {
            System.out.println(n);
        }

        for (int n:array) {
            total += n;
        }
        System.out.println("Tu suma es igual a: " + total);
    }
}