package personajes;

import clases.Elemento;
import interfaces.Movible;

public class Disparo extends Elemento implements Movible {

	public Disparo(int x, int y, int ancho, int alto) {
		super(x, y, ancho, alto);
	}

	@Override
	public void arriba() {
		System.out.println("Disparaste arriba");
	}

	@Override
	public void abajo() {
		System.out.println("Disparaste abajo");
	}

	@Override
	public void izquierda() {
		System.out.println("Disparaste izquierda");
	}

	@Override
	public void derecha() {
		System.out.println("Disparaste derecha");
	}
}