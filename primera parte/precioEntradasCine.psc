Algoritmo Ejercicio2
	definir precioAdulto como real;
	definir precioNinio como real;
	definir cantAdulto como entero;
	definir cantNinio como entero;
	definir total como real;
	
	precioAdulto <- 700;
	precioNinio <- 400;
		
	escribir 'Ingrese la cantidad de adultos: ';
	leer cantAdulto;
	escribir 'Ingrese la cantidad de niños';
	leer cantNinio;
	
	total <- ((cantAdulto * precioAdulto) + (cantNinio * precioNinio)) ;
	si ((cantAdulto+cantNinio) > 5) Entonces
		total <- total - ((cantAdulto * precioAdulto) + (cantNinio * precioNinio))*0.10 ;
	FinSi
	
	escribir 'El precio a pagar es: ',total,'$. ';
	
FinAlgoritmo
