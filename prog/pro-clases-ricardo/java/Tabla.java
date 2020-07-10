import java.util.InputMismatchException;
import java.util.NoSuchElementException;
import java.util.Scanner;

/**
 * Tabla
 */
public class Tabla {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int numero;

        for (;;) {
            try {
                System.out.print("Tabla a mostrar: ");
                numero = scanner.nextInt();
                if (numero >= 0 && numero <= 10) {
                    break;
                }
                System.err.println("El número debe estar comprendido entre 0 y 10.");                
            } catch (InputMismatchException e) {
                System.err.println("Debe introducir un número entero.");
                scanner.nextLine();
            } catch (NoSuchElementException e) {
                return;
            }
        }

        for (int i = 0; i <= 10; i++) {
            System.out.print(numero);
            System.out.print(" x ");
            System.out.print(i);
            System.out.print(" = ");
            System.out.println(numero * i);
        }
    }
}