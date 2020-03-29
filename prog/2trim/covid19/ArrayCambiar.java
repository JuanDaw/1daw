public class ArrayCambiar {
    public static void main(String[] args) {
        int array[] = { 1, 2, 3, 4, 5, 6 };

        System.out.println("Array sin cambiar()");
        for (int n : array) {
            System.out.println(n);
        }

        ArrayCambiar.cambiar(array);
        System.out.println("Array con cambiar()");
        for (int m : array) {
            System.out.println(m);
        }

        /*
         * ¿Cambia en algo el resultado si el array se declara como final en el método
         * main()? ¿Por qué? Si se declarase el array como final no pasaría nada ya que
         * no se está volviendo a ligar la variable array a ningún otro parámetro sino
         * que se está cambiando el valor de su segundo elemento en este caso.
         * 
         * ¿Cambia en algo el resultado si el parámetro del método cambiar() se declara
         * como final? ¿Por qué? Pasaría lo mismo, ya que lo que devuelve el método
         * cambiar() sería una mutación del segundo elemento del parámetro que se le
         * pasa, no una nueva referencia.
         */
    }

    public static void cambiar(int p[]) {
        p[2] = 23;
    }
}