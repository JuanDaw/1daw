public class Prueba {
    public static void main(String[] args) {
        Persona yo = new Persona("Alonso", 956956956);
        String cadena = yo.toString();

        System.out.println(cadena);

        // Cliente juan = new Cliente("Juan", 111111111, 105);


        // yo.set("Manolo", 1111111);
        // juan.set(55555);
        // juan.set(25L);

        // System.out.println(yo.getNombre());
        // System.out.println(yo.getTelefono());

        // System.out.println(juan.getNombre());
        // System.out.println(juan.numero);

        // Depende a que 'class' nos refiramos así ejecuta un método u otro(Polimorfismo)
        // imprimeNombre(juan);

        // System.out.println(juan.getTelefono());


        // Contador c = new Contador(5);
        
        // System.out.println(c.getValor());
        // c.siguiente();
        // System.out.println(c.getValor());
        // System.out.println(c.siguiente());
        
        
        
        
        // Contador z = new Contador();

        // Da 'true' porque en 'Contador.java' hemos cambiado el cuerpo del método 'equals'
        // System.out.println(c.equals(z));
        // Da 'falso' porque no 'apuntan' al mismo espacio en memoria ambas variables
        // System.out.println(c == z);
        // c.setValor(4);
        // z.setValor(5);
        // // System.out.println(c.getValor());
        // System.out.println(z.getValor());
        // System.out.println(c == z);
        
        // int numero = 45;
        

        // System.out.println("Hola, mundo");
        // System.out.println(numero);
        // numero = 33;
        // System.out.println(numero);
    }

    public static void imprimeNombre(Persona p) {
        System.out.println(p.getNombre());
    }

    public static void imprimeNombre(Cliente c) {
        System.out.println(c.getNombre());
        System.out.println(c.getNombre());
    }
}