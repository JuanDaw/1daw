public class Persona {
    private String nombre;
    private int telefono;

    Persona(String nom, int telf) {
        setNombre(nom);
        setTelefono(telf);
        
        // nombre = nom;
        // telefono = telf;
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
}