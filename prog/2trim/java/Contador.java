public class Contador {
    private int valor;

    // Constructor. Te obliga a pasarle un argumento inicial a 'new Contador'
    // en 'Prueba.java'
    Contador(int val) {
        valor = val;
    }
    
    public int getValor() {
        return this.valor;
    }
    
    public int siguiente() {
        this.valor += 1;
        return this.valor;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof Contador)) {
        // if (this.getClass() != obj.getClass()) {
            return false;
        }
        // NARROWING convirtiendo 'obj' de clase 'Object' a clase 'Contador'
        // y la declaras a la variable 'c'
        Contador c = (Contador) obj;

        return this.getValor() == c.getValor();
    }
}