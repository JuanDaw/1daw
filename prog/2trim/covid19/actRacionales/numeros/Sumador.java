package numeros;

public class Sumador<T extends Number & Sumable> {

    protected T a;
    protected T b;

    Sumador(T a, T b) {
        this.a = a;
        this.b = b;
    }

    public void setElements(T a, T b) {
        this.a = a;
        this.b = b;
    }

    public T getFirst() {
        return a;
    }

    public T getSecond() {
        return b;
    }

    public double suma(T c) {
        return a.doubleValue() + b.doubleValue();
    }
}