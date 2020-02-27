public class Persona {
    private String nombre;
    private int telefono;

    Persona() {

    }

    Persona(String nom) {
        setNombre(nom);
    }

    Persona(String nom, int telf) {
        setNombre(nom);
        setTelefono(telf);

    Persona(Persona otra) {
        setNombre(otra.getNombre());
        setTelefono(otra.getTelefono());
    }
        
        // nombre = nom;
        // telefono = telf;
    }

    @Override
    public String toString() {
        return getNombre() + " " + getTelefono();
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nom) {
        nombre = nom;
    }
    
    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telf) {
        telefono = telf;
    }

    public void set(String nom, int telf) {
        nombre = nom;
        telefono = telf;
    }

    public void set(String nom) {
        nombre = nom;
    }

    public void set(int telf) {
        telefono = telf;
    }

    public Object getNose() {
        return new Object();
    }
}