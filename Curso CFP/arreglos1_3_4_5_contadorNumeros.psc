funcion cargarVector(N Por Valor,V1 por referencia,V2 Por Referencia)
	definir i como entero;
	para i <- 0 hasta (N -1) Hacer
		V1(i) <- azar(10);
		V2(i) <- azar(10);
	FinPara
FinFuncion


Funcion calcularProducto(N por valor,V1 por referencia,V2 por referencia)
	definir i,aux como entero;
	para i <- 0 hasta (N-1) Hacer
		aux <- V1(i)*V2(i);
		Escribir i+1,') ',V1(i),'*',V2(i),'= ',aux;
	FinPara
FinFuncion


funcion cuantasVeces(N por valor,V1 por referencia)
	definir i,cont,num como entero;
	cont <- 0;
	escribir 'Que numero buscas?';
	leer num;
	para i <- 0 hasta (N-1) Hacer
		si V1(i) = 0 Entonces
			cont<-cont+1;
			
		FinSi
	FinPara
	escribir 'El numero ',num,' aparece ',cont,' veces';
FinFuncion

funcion sumaPares(N por valor,V1 por referencia)
	definir i,suma como entero;
	suma<-0;
	para i <- 0 hasta (N-1) Hacer
		si (i mod 2 <> 0) Entonces
			suma <- suma + V1(i);
		FinSi
	FinPara
escribir 'La suma de los numeros en posiciones impares es: ',suma;
FinFuncion


Algoritmo arreglo_3_4_5
	definir N,V1,V2 como entero;
	N <- 10;
	Dimension V1(N);
	Dimension V2(N);
	
	cargarVector(N,V1,V2);
	calcularProducto(N,V1,V2);
	cuantasVeces(N,V1);
	sumaPares(N,V1);
	
FinAlgoritmo
