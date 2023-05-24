funcion cargarVector(vector Por Referencia,N Por Valor)
	para i <- 1 hasta N Hacer
		vector(i) <- azar(100);
	FinPara
FinFuncion

funcion calcularMinimo(vector por referencia,N por valor,min por referencia,pos por referencia)
	Para i <- 1 Hasta N Hacer
		si vector(i) < min Entonces
			min <- vector(i);
			pos <- i;
		FinSi
	FinPara
FinFuncion

funcion informarv(vector por referencia,n por valor)
	para i <- 1 Hasta N Hacer
		escribir i,' = ',vector(i);
	FinPara
	
FinFuncion

Algoritmo arreglos_2
	definir N,min como entero;
	N <- 10;
	Dimension vector(N);
	min <- 9999;
	
	cargarVector(vector,N);
	calcularMinimo(vector,N,min,pos);
	
	escribir 'El valor minimo es: ',min,' enla posicion ',pos;
	
	informarv(vector,n);
FinAlgoritmo
