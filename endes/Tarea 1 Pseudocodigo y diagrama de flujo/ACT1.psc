Algoritmo suma10num
	
	n_num <- 0
	acc <- 0
	
	Repetir
		Escribir "Ingrese el numero:"
		Leer n
		acc <- acc + n
		n_num <- n_num + 1
	Hasta Que n_num = 10
	
	Escribir "la suma total es:", acc
	
FinAlgoritmo