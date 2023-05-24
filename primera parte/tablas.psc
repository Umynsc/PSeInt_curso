Algoritmo tablas
	definir num1 como entero
	definir indice Como Entero
	indice <- 0;
	num1<-1;
	mientras (num1 <> 0) Hacer
		leer num1;
		escribir('la tabla del: '); escribir(num1);
		
		mientras (indice <= 15) Hacer
			Escribir '  ',num1,' x ',indice,' = ',(num1 * indice);
			indice<- indice +1;
		FinMientras
	FinMientras
FinAlgoritmo
