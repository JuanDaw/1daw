import java.util.InputMismatchException;
import java.util.NoSuchElementException;
import java.util.Scanner;

public class Actividad2a {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int op1, op2;
        String op;

        for (;;) {
            try {
                System.out.print("Primer operando: ");
                op1 = scanner.nextInt();
                // Consume salto de línea
                scanner.nextLine();
                System.out.print("Operación: ");
                op = scanner.nextLine();

                if (op != "+" && op != "-" && op != "*" && op != "/") {
                    System.err.println("El operador no es correcto");
                    continue;
                }

                System.out.print("Segundo operando: ");
                op2 = scanner.nextInt();
                // Consume salto de línea
                scanner.nextLine();
        
                System.out.println("Resultado: " + calcula(op1, op2, op));
                break;
                
            } catch (InputMismatchException e) {
                System.err.println("El dato debe ser un número entero");
                scanner.nextLine();
            } catch (NoSuchElementException e) {
                System.err.println("Faltan datos.");
                return;
            }

        }



    }

    // public static boolean operadorValido(String op) {
    //     return op == "+" || op == "-" || op == "*" || op == "/":

    // }

    public static int calcula(int op1, int op2, String op) {
        int res = 0;

        switch (op) {
            case "+":
                res = op1 + op2;
                break;
            
            case "-":
                res = op1 - op2;
                break;

            case "*":
                res = op1 * op2;
                break;

            case "/":
                res = op1 / op2;
                break;

            default:
                res = 0;
                break;
        }
        return res;
    }

}