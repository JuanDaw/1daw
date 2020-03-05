public class Actividad2 {
    public static void main(String[] args) {
        int x = 5;

        if (x == 0 || x == 1) {
            System.out.println("menor que 2");
        } else if (x == 2) {
            System.out.println("vale 2");
        } else if (x == 3 || x == 5 || x == 6) {
            System.out.println("no es 4");
        } else {
            System.out.println("otra cosa");
        }

    }
}