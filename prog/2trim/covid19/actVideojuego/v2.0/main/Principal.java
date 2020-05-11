package main;

import java.util.Scanner;

import personajes.Nave;
import personajes.Tablero;

public class Principal {

	public static void main(String[] args) {

		Nave nave = new Nave(0, 0, 5, 5);
		Tablero tablero = new Tablero(10, 10, nave);

		System.out.println("Comenzamos");
		System.out.println("pulsa 1 para mover a la derecha");
		System.out.println("pulsa 2 para mover a la izquierda");
		System.out.println("pulsa 3 para mover a la arriba");
		System.out.println("pulsa 4 para mover a la abajo");
		System.out.println("pulsa 0 para terminar");

		Scanner sc = new Scanner(System.in);
		int tecla = sc.nextInt();
		while (tecla != 0) {
			moverTeclado(tablero, tecla);
			System.out.println("Introduzca su siguiente accion");
			sc = new Scanner(System.in);
			tecla = sc.nextInt();
		}
		System.out.println("ADIOS!");
	}

	private static void moverTeclado(Tablero table, int tecla) {
		switch (tecla) {
			case 1:
				table.getHumano().derecha();
				break;
			case 2:
				table.getHumano().izquierda();
				break;
			case 3:
				table.getHumano().arriba();
				break;
			case 4:
				table.getHumano().abajo();
				break;
		}
	}
}