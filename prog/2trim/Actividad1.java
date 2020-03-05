public class Actividad1 {
    public static void main(String[] args) {
        int x = 5;

        switch (x) {
            case 0:
            case 1:
                System.out.println("menor que 2");
                break;

            case 2:
                System.out.println("vale 2");
                break;

            case 3:
            case 5:
            case 6:
                System.out.println("no es 4");
                break;

            default:
                System.out.println("otra cosa");
        }

    }
}