package videojuego;

public class Vida {

    private int vidas;

    Vida(int numvidas) {
        this.vidas = numvidas;
    }

    public int getVidas() {
        return vidas;
    }
    
    public void sumVida(int n) {
        vidas += n;
        System.out.println("Te quedan " + vidas + " vidas");
    }
    
    public void resVida(int n) {
        vidas -= n;
        System.out.println("Te quedan " + vidas + " vidas");
    }
}