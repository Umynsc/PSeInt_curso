funcion cargarVector(v Por Referencia,n por valor)
	definir i como entero;
	para i <- 0 hasta (n-1) Hacer
		v(i) <- azar(30)+2;
		escribir i,')',v(i);	
	FinPara
	escribir '';
FinFuncion

funcion ordenarVector(v por referencia,n por valor)
	definir aux,i como entero;
	para j <- 0 hasta n -1 Hacer
		
	para i <- 0 hasta (n-2) Hacer
		si v(i+1) < v(i) Entonces
			aux <- v(i+1);
			v(i+1) <- v(i);
			v(i) <- aux;
	 	FinSi
	 FinPara
	FinPara
FinFuncion

funcion informarVector(v por referencia,n por valor)
	para i <- 0 hasta n-1 Hacer
		Escribir i,') ',v(i);
		
	FinPara
	
FinFuncion


Algoritmo arreglo_7
	definir N como entero;
	N <- 5;
	Dimension v(n);
	cargarVector(v,n);
	ordenarVector(v,n);
	informarVector(v,n);
FinAlgoritmo
