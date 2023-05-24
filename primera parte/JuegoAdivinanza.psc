Algoritmo ejercicio4
	definir num como entero;
	definir num2 como entero;
	definir intentos como entero;
	definir deNuevo Como Caracter;
	definir cantidad como entero;
	deNuevo <- 'si';
	escribir 'Rango del juego: ';
	leer cantidad;
	
	mientras (deNuevo = 'si') Hacer
	num2 <- azar(cantidad) + 1 ;
	escribir 'tienes 10 intentos';
	escribir 'Ingrese un numero del 1 al ',cantidad,': ';
	leer num;
	intentos <- 9;
	mientras (num <> num2) y (intentos > 0) hacer
		si (num < num2) Entonces
			escribir ' Ingresa un numero mas ALTO ! ';
		SiNo
			escribir ' Ingresa un numero mas BAJO ! ';
		FinSi
		
		leer num;
		intentos <- intentos - 1;
		escribir intentos,' intentos';
		
	FinMientras
	
	si (num = num2) Entonces
		escribir ' FELICIDADES acertaste el numero !';
		escribir ' era el numero: ',num2;
		escribir ' lo hisciste en ',10 - intentos,' intentos.';
	SiNo
		escribir ' ups perdiste ';
		Escribir ' era el ',num2;
		
	FinSi
	escribir '¿Jugas de nuevo? ';
	leer deNuevo;
FinMientras
	
FinAlgoritmo
