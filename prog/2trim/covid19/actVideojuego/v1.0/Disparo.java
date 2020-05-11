package videojuego;

public class Disparo implements Movimiento {

    public void arriba() {
        System.out.println("El disparo se movió arriba");
    }

    public void abajo() {
        System.out.println("El disparo se movió abajo");
    }

    public void derecha() {
        System.out.println("El disparo se movió a la derecha");
    }

    public void izquierda() {
        System.out.println("El disparo se movió a la izquierda");
    }
}