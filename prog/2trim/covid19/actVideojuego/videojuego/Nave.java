package videojuego;

public class Nave implements Movimiento {

    public void arriba() {
        System.out.println("La nave se movió arriba");
    }

    public void abajo() {
        System.out.println("La nave se movió abajo");
    }

    public void izquierda() {
        System.out.println("La nave se movió a la izquierda");
    }

    public void derecha() {
        System.out.println("La nave se movió a la derecha");
    }
}