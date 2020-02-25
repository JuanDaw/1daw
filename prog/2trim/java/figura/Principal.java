public class Principal {
    public static void main(String[] args) {
        Rectangulo r = new Rectangulo(4, 3);
        Triangulo t = new Triangulo(5, 7);

        imprimirArea(r);
        imprimirArea(t);
    }

    public static void imprimirArea(Figura fig) {
        System.out.println(fig.area());
    }
}