package personajes;

import clases.Elemento;
import interfaces.Movible;

public class Nave extends Elemento implements Movible {

	public Nave(int x, int y, int ancho, int alto) {
		super(x, y, ancho, alto);
	}

	@Override
	public void arriba() {
		// TODO Auto-generated method stub
		System.out.println("Nave se mueve arriba");
	}

	@Override
	public void abajo() {
		// TODO Auto-generated method stub
		System.out.println("Nave se mueve abajo");
	}

	@Override
	public void izquierda() {
		// TODO Auto-generated method stub
		System.out.println("Nave se mueve izquierda");
	}

	@Override
	public void derecha() {
		// TODO Auto-generated method stub
		System.out.println("Nave se mueve derecha");
	}
}