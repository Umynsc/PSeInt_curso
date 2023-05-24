Algoritmo vocal_o_consonante
	definir carac Como Caracter 
	definir vocales como entero
	definir consonantes como entero
	definir indice Como Entero
	indice <- 0;
	vocales <- 0;
	consonantes <- 0;
	
	Mientras (indice < 10)   hacer
		escribir ('Ingresa 1 caracter: ');
		leer carac;
		si carac = 'A' o carac = 'E' o carac = 'I' o carac = 'O' o carac = 'U' o carac = 'a' o carac = 'e' o carac = 'i' o carac = 'o' o carac = 'u' Entonces
			vocales <- vocales + 1;
		SiNo
			consonantes <- consonantes +1;
		FinSi
		indice <- indice + 1;
	FinMientras
	
	Escribir 'Habia ',vocales,' vocales y ',consonantes,' consonantes.' ; 
	
	
FinAlgoritmo
