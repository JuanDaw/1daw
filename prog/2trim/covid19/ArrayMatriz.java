public class ArrayMatriz {
    public static void main(String[] args) {
        int arrayBi[][] = { { 1, 2, 3 }, { 4, 5, 6 }, { 7, 8, 9 } };

        for (int i = 0; i < arrayBi.length; i++) {
            for (int j = 0; j < arrayBi.length; j++) {
                System.out.print(arrayBi[i][j] + " ");
            }
            System.out.println();
        }
    }
}