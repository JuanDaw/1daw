Algoritmo notamedia
	// declaramos 3 variables y suponemos que disponemos de una tabla en al base de datos con 5 registros.
	registros <- 5
	nalumnos <- 0
	nnotas <- 0
	media <- 0
	Mientras registros<>0 Hacer
		Leer nombre
		Leer curso
		Leer nota
		accnotas <- accnotas+nota
		registros <- registros-1
		nalumnos <- nalumnos+1
	FinMientras
	media <- accnotas/nalumnos
	Escribir 'La nota media es: ',media
FinAlgoritmo
