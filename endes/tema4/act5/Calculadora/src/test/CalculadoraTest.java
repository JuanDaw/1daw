package org.donana.calculadora;
import org.junit.Test;
import org.junit.Before;

public class CalculadoraTest {

    @Test
    public void testSuma() {
        int resultado = Calculadora.suma(3, 2);
        int esperado = 5;
        assertEquals(esperado, resultado);
    }

    @Test
    public void testResta() {
        int resultado = Calculadora.resta(3, 2);
        int esperado = 1;
        assertEquals(esperado, resultado);
    }
}