Algoritmo notamedia
	registros <- 5
	nalumnos <- 0
	nnotas <- 0
	media <- 0
	Repetir
		Leer nombre
		Leer curso
		Leer nota
		accnotas <- accnotas+nota
		registros <- registros-1
		nalumnos <- nalumnos+1
	Hasta Que registros = 0
	media <- accnotas/nalumnos
	Escribir 'La nota media es: ',media
FinAlgoritmo
