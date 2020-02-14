public class Contador {
    private int valor;
    
    public int getValor() {
        return this.valor;
    }
    public void setValor(int valor) {
        this.valor = valor;
    }

    @Override
    public boolean equals(Object obj) {
        if (this.getClass() != obj.getClass()) {
            return false;
        }
        // NARROWING convirtiendo 'obj' de clase 'Object' a clase 'Contador'
        // y la declaras a la variable 'c'
        Contador c = (Contador) obj;

        return this.getValor() == c.getValor();
    }
}