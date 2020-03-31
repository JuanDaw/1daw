public class ArrayDistinct {
    public static void main(String[] args) {
        Object[] array = { 3, "Alonso", true, null, new StringBuilder("Fernández") };

        ArrayDistinct.show(array);
    }

    public static void show(Object[] a) {
        for (int i = 0; i < a.length; i++) {
            System.out.println(a[i]);
        }
    }
}