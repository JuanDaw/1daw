public class ArrayMatriz {
    public static void main(String[] args) {
        int arraybi[][] = { { 1, 2, 3 }, { 4, 5, 6 }, { 7, 8, 9 } };

        for (int i = 0; i < arraybi.length; i++) {
            for (int j = 0; j < arraybi.length; j++) {
                System.out.println(arraybi[i][j]);
            }
        }
    }
}