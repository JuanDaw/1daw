public class Figura {
    // private double ancho;
    // private double alto;
    protected double ancho;
    protected double alto;

    public double getAncho() {
        return ancho;
    }

    public double getAlto() {
        return alto;
    }
    
    Figura(double an, double al) {
        ancho = an;
        alto = al;
    }

    public double area() {
        return 0.0;
    }
}