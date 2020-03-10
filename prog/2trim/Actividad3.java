import java.util.Scanner;

public class Actividad3 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int numero;

        for (;;) {
            try {
                System.out.print("Introduce primer operando");
                op1 = scanner.nextInt();

                System.out.print("Introduce segundo operando");
                op2 = scanner.nextInt();
                
                System.out.print("Introduce operación a realizar");
                operador = scanner.next()

                if (operador = "+") {
                    sol = op1 + op2;
                    return
                }
            } catch (Exception e) {
                //TODO: handle exception
            }
        }
    }
}