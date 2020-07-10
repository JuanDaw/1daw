/**
 * Cliente
 */
public class Cliente extends Persona {
    public long numero;
    
    // Cliente() {
        
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
        return 2; // * super.getTelefono();
    }
}