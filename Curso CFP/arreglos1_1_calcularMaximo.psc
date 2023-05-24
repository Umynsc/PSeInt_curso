funcion cargarArreglo(arregloEnteros por referencia,N Por Valor)
	definir aux,i como entero;
	para i <- 1 hasta N Hacer
		escribir 'Ingrese el Numero: (',i,') ';
		Leer aux; 
		arregloEnteros(i)<-aux;
	FinPara
FinFuncion

funcion calcularMaximo(arregloEnteros por referencia,N por valor,max por referencia,pos por referencia)
	definir i como entero;
	para i<- 1 Hasta N Hacer
		si arregloEnteros(i) > max Entonces
			max <- arregloEnteros(i);
			pos <- i;
		FinSi
	FinPara
FinFuncion



Algoritmo arreglos_1
	definir N,max,arregloEnteros como entero;
	N<-10; max <- -9999;
	Dimension arregloEnteros(N);
	
	cargarArreglo(arregloEnteros,N);
	calcularMaximo(arregloEnteros,N,max,pos);
	escribir 'El numero Maximo es: ',max,' en la posicion ',pos;
	
FinAlgoritmo
