/**
 * Triangulo
 */
public class Triangulo extends Figura {
    Triangulo(double an, double al) {
        super(an, al);
    }
    
    @Override
    public double area() {
        return (ancho * alto) / 2.0;
    }
}