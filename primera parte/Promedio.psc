Algoritmo ejercicio1
	definir num como entero;
	definir suma como entero;
	definir contador como entero;
	contador<-0;
	suma<-0;
	escribir 'Ingrese un numero ';
	leer num;
	Mientras  (num > 0) hacer
		suma<-suma + num;
		contador<-contador+1;
		escribir 'Ingrese un numero ';
		leer num;
	Finmientras
	escribir 'El promedio es: ',suma/contador;
	
FinAlgoritmo
