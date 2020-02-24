public class Cliente extends Persona {
    public long numero;

    // Cliente() {
    //     super();
    // }

    // Cliente(String nom) {
    //     super(nom);
    // }

    Cliente(String nom, long num) {
        super(nom);
        numero = num;
    }

    Cliente(String nom, int telf, long num) {
        super(nom, telf);
        numero = num;
    }

    public void set(long num) {
        numero = num;
    }

    @Override
    public String getNombre() {
        return "Cliente " + super.getNombre();
    }

    @Override
    public int getTelefono() {
        return 2 * super.getTelefono();
    }

    // Se puede sobreescribir la class 'getNose' cambiando el tipo de 'Object' a 'String'
    // porque String es una clase que pertenece a la clase 'Object'
    @Override
    public String getNose() {
        return "Hola";
    }
}