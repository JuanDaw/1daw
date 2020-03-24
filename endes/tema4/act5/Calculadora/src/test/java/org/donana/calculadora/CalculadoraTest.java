package org.donana.calculadora;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

import org.junit.After;
import org.junit.Before;  
    
public class CalculadoraTest {

    Calculadora calc;

    @Before
    public void before() {
        System.out.println("before()");
        calc = new Calculadora();
    }

    @After
    public void After() {
        System.out.println("after()");
        calc.clear();
    }
        
    @Test
    // Test que prueba el método Suma
    public void testSuma() {
        System.out.println("suma()");
        int resultado = calc.suma(3, 2);
        int esperado = 5;
        assertEquals(esperado, resultado);
    }

    @Test
    // Test que prueba que el valor de ans es el esperado despúes de hacer una suma
    public void testAnsSuma() {
        System.out.println("ansSuma()");
        calc.suma(3, 2);
        int resultado = calc.ans();
        int esperado = 5;
        assertEquals(esperado, resultado);
    }
}