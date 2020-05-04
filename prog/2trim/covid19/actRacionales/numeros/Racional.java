package numeros;

class Racional extends Number {

    public double numer;
    public double denom;

    public Racional() {
        numer = 0;
        denom = 1;
    }

    public Racional(double numer, double denom) {
        this.numer = numer;
        this.denom = denom;
    }

    @Override
    public int intValue() {
        return (int) (numer / denom);
    }

    @Override
    public long longValue() {
        return (long) (numer / denom);
    }

    @Override
    public float floatValue() {
        return (float) (numer / denom);
    }

    @Override
    public double doubleValue() {
        return (double) (numer / denom);
    }

}