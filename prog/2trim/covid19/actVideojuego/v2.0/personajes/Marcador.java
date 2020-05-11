package personajes;

import clases.Elemento;

public class Marcador extends Elemento {

	private int vidas;
	private int puntuacion;

	public Marcador(int x, int y, int ancho, int alto) {
		super(x, y, ancho, alto);
	}

	public int getVidas() {
		return vidas;
	}

	public void setVidas(int vidas) {
		this.vidas = vidas;
	}

	public int getPuntuacion() {
		return puntuacion;
	}

	public void setPuntuacion(int puntuacion) {
		this.puntuacion = puntuacion;
	}

	public void modPuntuacion(boolean signo) {
		// si el signo es true aumentamos la puntuacion, sino restamos
		if (signo) {
			this.puntuacion++;
		} else {
			this.puntuacion--;
		}
	}

	public void modVidas(boolean signo) {
		// si el signo es true aumentamos las vidas, sino restamos
		if (signo) {
			this.vidas++;
		} else {
			this.vidas--;
		}
	}
}