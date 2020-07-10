/**
 * Figura
 */
public abstract class Figura {
    protected double ancho;
    protected double alto;
    protected final double proporcion = 2.0;

    Figura(double an, double al) {
        ancho = an;
        alto = al;
    }

    public abstract double area();
}