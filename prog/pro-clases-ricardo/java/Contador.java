public class Contador {
    private int valor;

    Contador(int val) {
        valor = val;
    }

    public int getValor() {
        return valor;
    }

    public int siguiente() {
        return ++valor;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof Contador)) {
            return false;
        }

        return getValor() == ((Contador) obj).getValor();
    }
}