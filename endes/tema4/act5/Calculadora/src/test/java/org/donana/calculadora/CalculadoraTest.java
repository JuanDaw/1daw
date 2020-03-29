package org.donana.calculadora;

// Declaración de todos los imports necesarios, que nos debe incluir VSCode
// automáticamente
import static org.junit.Assert.assertEquals;

import java.util.Arrays;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;
import org.junit.runners.Parameterized.Parameters;

// Con esta anotación le indicamos a JUnir que ejecute mis pruebas con un "runner"
// particular, en nuestro caso, Parameterized.class que se encarga de hacer las
// pruebas parametrizadas
@RunWith(value = Parameterized.class)
public class CalculadoraTest {

    @Parameters
    // Método public static que devuelve un elemento iterable de array de objetos
    public static Iterable<Object[]> getData() {
        // asList requiere que los elementos se pasen como un array de arrays
        // es decir, un array bidimensional
        return Arrays.asList(new Object[][] {
                // Indicamos todas las pruebas {a, b, esperado}
                { 3, 1, 4 }, { 2, 3, 5 }, { 3, 3, 6 } });
    }

    private int a, b, esperado;

    // Constructor para mi prueba con tres variables a y b (valoresd e entrada del
    // método)
    // y esperado (resultado esperado que devolverá el método)
    public CalculadoraTest(int a, int b, int esperado) {
        // Guardamos los parámetros en variables definidas anteriormente
        this.a = a;
        this.b = b;
        this.esperado = esperado;
    }

    // Prueba sobre el método suma, que compara el valor resultado con el valor
    // esperado
    // calculados a partir de los parámetros a y b
    @Test
    public void testSuma() {
        Calculadora calc = new Calculadora();
        int resultado = calc.suma(a, b);
        assertEquals(esperado, resultado);
    }
}