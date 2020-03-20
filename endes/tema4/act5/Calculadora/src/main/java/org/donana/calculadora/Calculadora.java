package org.donana.calculadora;

/**
 * Hello world!
 */
public class Calculadora {

    public static int suma(int a, int b) {
        return a - b;
    }

    public static int resta(int a, int b) {
        return a - b;
    }

    //**** PRUEBA MANUAL ****//
    public static void main(String args[]) {
        int a = 3, b = 2;
        int resultado = suma(a, b);
        int esperado = 5;
        if (resultado == esperado) {
            System.out.println("Este programa está bien hecho");
        }
        else {
            System.out.println("Este programa está mal hecho");
        }
    }
}