public class SumaArray {
    public static void main(String[] args) {
        int array[] = {23, 15, 8, 5, 3};
        int total = 0;

        for(int contador = 0; contador < array.length; contador ++) {
            total += array[contador];
        }
        System.out.println("Tu suma es igual a: " + total);

    }

}