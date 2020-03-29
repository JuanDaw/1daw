public class DesafioEdabit {
    public static int[][] squarePatch(int n) {
        int arrayCuadrada[][] = new int[n][n];

        if (n == 0) {
            return arrayCuadrada;
        }
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                arrayCuadrada[i][j] = n;
            }
        }
        return arrayCuadrada;
    }
}