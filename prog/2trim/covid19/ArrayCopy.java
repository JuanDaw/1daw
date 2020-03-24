import java.util.Arrays;

public class ArrayCopy {
    public static void main(String[] args) {
        int longi;

        int[] array = {1, 2, 3, 4, 5, 6, 7, 8};
        longi = array.length;
        for (int i:array) {
            System.out.println(i);
        }

        int[] copy = Arrays.copyOf(array, longi + (longi / 2));
        for (int n:copy) {
            System.out.println(n);
        }
    }
}