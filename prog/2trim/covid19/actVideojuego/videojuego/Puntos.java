package videojuego;

public class Puntos {

    public int puntos = 0;

    public void sumPunto(int n) {
        puntos += n;
        System.out.println("Te quedan " + puntos);
    }

    public void resPunto(int n) {
        puntos -= n;
        System.out.println("Te quedan " + puntos);
    }
}