public abstract class Figura {
    // private double ancho;
    // private double alto;
    protected double ancho;
    protected double alto;

    // public double getAncho() {
    //     return ancho;
    // }

    // public double getAlto() {
    //     return alto;
    // }
    
    Figura(double an, double al) {
        ancho = an;
        alto = al;
    }

    // Definimos la clase 'area' como abstracta. Se escribe como una sentencia
    // donde solo tiene signatura y sin cuerpo. Posteriormente en clases hijas
    // se reescribira(@Override) la clase 'area'
    public abstract double area();
}