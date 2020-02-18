public class Cliente extends Persona {
    public long numero;

    Cliente(String nom, int telf, long num) {
        super(nom, telf);
        numero = num;
    }
}