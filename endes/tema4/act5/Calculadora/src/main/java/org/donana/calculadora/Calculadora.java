package org.donana.calculadora;

/**
 * Hello world!
 */
public class Calculadora {

    //ans guarda el último resultado
    private int ans;

    //Reseteo / Constructor ans = 0
    public Calculadora() {
        ans = 0;
    }

    // Cada vez que realizamos un cálculo se almacena en ans

    public int suma(int a, int b) {
        ans = a + b;
        return ans;
    }

    public int resta(int a, int b) {
        ans = a - b;
        return ans;
    }

    // Si sólo pasamos un parámetro a suma o resta, se suma o resta a ans
    public int suma(int v) {
        ans += v;
        return ans;
    }

    public int resta(int v) {
        ans -= v;
        return ans;
    }

    // Método ans que simplemente devuelve el valor de ans
    public int ans() {
        return ans;
    }

    // Método que restaura el valor de ans
    public void clear() {
        ans = 0;
    }
}