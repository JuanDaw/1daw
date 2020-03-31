public class DesafioEdabit {
    public static int[][] squarePatch(int n) {
        int arrayCuadrado[][] = new int[n][n];

        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                arrayCuadrado[i][j] = n;
            }
        }
        return arrayCuadrado;
    }
}