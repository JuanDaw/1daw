import java.util.Scanner;

class Entrada {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int numero;

        System.out.print("Introduzca un número entero: ");
        numero = scanner.nextInt();
        numero *= 2;
        // Integer.valueOf(numero).toString()
        System.out.println("El número duplicado es: " + numero);
    }
}