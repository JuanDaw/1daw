import java.util.Scanner;

public class Tabla {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        final int numero;
        int i = 0;

        System.out.print("Tabla a mostrar: ");
        numero = sc.nextInt();

        if (numero >= 0 && numero <= 10) {
            while (i <= 10) {
                System.out.print(numero);
                System.out.print(" x ");
                System.out.print(i);
                System.out.print(" = ");
                System.out.println(numero * i);
                i++;
            }
        } else {
            System.err.println("El número debe estar comprendido entre 0 y 10");
        }
    }
}