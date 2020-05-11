package videojuego;

public class Principal {
    public static void main(String[] args) {
        Elemento<Nave> nave1 = new Elemento<>(10, 50, new Nave());
        Elemento<Vida> vidas = new Elemento<>(0, 10, new Vida(5));
        var puntos = new Elemento<Puntos>(50, 10, new Puntos());

        nave1.getElemento().arriba();
        vidas.getElemento().aumentarVida(8);
        puntos.posicion();
    }
}