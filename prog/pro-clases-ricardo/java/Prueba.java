public class Prueba {
    public static void main(String[] args) {
        int x = 0;
        
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
                System.out.println("No es 4"); 
                break;

            default:
                System.out.println("otra cosa");
        }

        if (x == 0 || x == 1) {
            System.out.println("menor que 2");
        } else if (x == 2) {
            System.out.println("vale 2");
        } else if (x == 3 || x == 5 || x == 6) {
            System.out.println("No es 4");
        } else {
            System.out.println("otra cosa");
        }
    }
}