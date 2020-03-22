public class Saluda {
    public static void main(String[] args) {
        if (args.length == 0) { 
            System.out.println("Debes introducir un nombre");
        } else {
            System.out.println("¡Hola, " + args[0] + "!");
        }
    }
}