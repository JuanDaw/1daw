/**
 * Final
 */
public class Final {
    public static void main(String[] args) {
        final int[] x = { 1, 2, 3 };
        cambiar(x);
        System.out.println(x[0]);
    }

    public static void cambiar(final int[] p) {
        p[0] = 44;
    }

    public static boolean deepEquals(Object[] a, Object[] b) {
        if (a == null && b == null) {
            return true;
        } else if (a == null || b == null) {
            return false;
        }

        if (a.length != b.length) {
            return false;
        }

        for (int i = 0; i < a.length; i++) {
            if (esReferencia(a[0]) && esReferencia(b[0])) {
                if (!deepEquals(a[0], b[0])) {
                    return false;
                }
            } else if (esArray(a[0]) && esArray(b[0])) {
                if (!Arrays.equals(a[0], b[0])) {
                    return false;
                }
            } else {
                if (a[0] != b[0]) {
                    return false;
                }
            }
        }

        return true;
    }
}
