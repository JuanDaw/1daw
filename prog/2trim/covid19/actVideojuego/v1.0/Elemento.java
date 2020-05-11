package videojuego;

public class Elemento<T> {

    private T elemento;
    private int ancho;
    private int alto;

    Elemento(int ancho, int alto, T elem) {
        this.ancho = ancho;
        this.alto = alto;
        this.elemento = elem;
    }

    public void setElemento(int ancho, int alto, T elem) {
        this.ancho = ancho;
        this.alto = alto;
        this.elemento = elem;
    }

    public T getElemento() {
        return elemento;
    }

    public int getAncho() {
        return ancho;
    }

    public int getAlto() {
        return alto;
    }

    public void posicion() {
        System.out.println("El elemento se encuentra en la posición " + ancho + "x" + alto);
    }
}