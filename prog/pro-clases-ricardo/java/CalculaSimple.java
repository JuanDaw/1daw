import java.util.InputMismatchException;
import java.util.NoSuchElementException;
import java.util.Scanner;

/**
 * CalculaSimple
 */
public class CalculaSimple {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int op1, op2;
        char op;

        for (;;) {
            try {
                System.out.print("Expresión: ");
                op1 = scanner.useDelimiter("\\D+").nextInt();
                op = scanner.useDelimiter("[\\d\\s]+").next().charAt(0);
                if (!operadorValido(op)) {
                    System.err.println("El operador no es correcto.");
                    continue;
                }
                op2 = scanner.reset().nextInt();
                System.out.println("Resultado: " + calcula(op1, op2, op));
                break;
            } catch (InputMismatchException e) {
                System.err.println("El dato debe ser un número entero.");
                scanner.nextLine();
            } catch (NoSuchElementException e) {
                System.err.println("Faltan datos.");
                return;
            } finally {
                scanner.close();
            }
        }
    }

    public static boolean operadorValido(char op) {
        return op == '+' || op == '-' || op == '*' || op == '/';
    }

    public static int calcula(int op1, int op2, char op) {
        int res = 0;

        switch (op) {
            case '+':
                res = op1 + op2;
                break;
            
            case '-':
                res = op1 - op2;
                break;

            case '*':
                res = op1 * op2;
                break;

            case '/':
                res = op1 / op2;
                break;            
        }

        return res;
    }
}