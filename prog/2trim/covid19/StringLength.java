public class StringLength {
    public static void main(String[] args) {
        StringBuilder s1 = new StringBuilder("Alonso");

        System.out.println(StringLength.longitud(s1));
    }

    public static int longitud(StringBuilder i) {
        return i.length();
    }
}