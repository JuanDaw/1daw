public final class Rectangulo extends Figura {
    Rectangulo(double an, double al) {
        super(an, al);
    }
    
    @Override
    public double area() {
        return ancho * alto;
    }

    // Manera de acceder a 'ancho' y 'alto' definiendo ancho y alto
    // como 'private' en Figura.java

    // public double area() {
    //     return getAncho() * getAlto();
    // }

}