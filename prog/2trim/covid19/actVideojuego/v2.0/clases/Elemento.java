package clases;

public class Elemento {

	private Coordenadas posicion;
	private Espacio tamanio;

	public Elemento(int x, int y, int ancho, int alto) {
		this.setPosicion(new Coordenadas(x, y));
		this.setTamanio(new Espacio(ancho, alto));
	}

	public Coordenadas getPosicion() {
		return posicion;
	}

	public void setPosicion(Coordenadas posicion) {
		this.posicion = posicion;
	}

	public Espacio getTamanio() {
		return tamanio;
	}

	public void setTamanio(Espacio tamanio) {
		this.tamanio = tamanio;
	}
}