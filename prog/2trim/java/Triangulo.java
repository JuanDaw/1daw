public class Triangulo extends Figura {
    Triangulo(double an, double al) {
        super(an, al);
    }
    
    @Override
    public double area() {
        return (ancho * alto) / 2.0;
    }

    // Manera de acceder a 'ancho' y 'alto' definiendo ancho y alto
    // como 'private' en Figura.java

    // public double area() {
    //     return (getAncho() * getAlto()) / 2.0;
    // }
}