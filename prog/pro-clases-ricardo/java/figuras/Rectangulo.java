/**
 * Rectangulo
 */
public class Rectangulo extends Figura {
    Rectangulo(double an, double al) {
        super(an, al);
    }

    @Override
    public double area() {
        final double resultado;

        resultado = ancho * alto;

        return resultado;
    }
}