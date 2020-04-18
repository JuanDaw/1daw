public class LengthString {
    public static void main(String[] args) {
        Object[] array = { 23, "Alonso", true, null, new StringBuilder("Fernández") };

        longitudString(array);
    }

    public static void longitudString(Object[] a) {
        for (int i = 0; i < a.length; i++) {
            if (a[i] instanceof CharSequence) {
                CharSequence b = (CharSequence) a[i];
                System.out.println("La longitud de la cadena es " + b.length());
            }
        }
    }
}