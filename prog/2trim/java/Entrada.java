import java.util.Scanner;

class Entrada {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int numero;

        System.out.print("Introduzca un numero entero: ");
        numero = scanner.nextInt();
        // Integer.valueOf(numero).toString()
        System.out.println("El número introducido es: " + numero);
    }
}