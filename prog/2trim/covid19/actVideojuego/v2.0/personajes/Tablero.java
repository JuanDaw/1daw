package personajes;

import clases.Espacio;

public class Tablero {

	private Espacio tamanio;
	private Nave humano;
	private Nave alienigena;

	public Tablero(int ancho, int alto, Nave humano) {
		this.setTamanio(new Espacio(ancho, alto));
		this.setHumano(humano);
		this.setAlienigena(new Nave(-3, 3, 2, 2));
	}

	public Tablero() {

	}

	public Espacio getTamanio() {
		return tamanio;
	}

	public void setTamanio(Espacio tamanio) {
		this.tamanio = tamanio;
	}

	public Nave getHumano() {
		return humano;
	}

	public void setHumano(Nave humano) {
		this.humano = humano;
	}

	public Nave getAlienigena() {
		return alienigena;
	}

	public void setAlienigena(Nave alienigena) {
		this.alienigena = alienigena;
	}
}