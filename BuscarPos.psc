Funcion InicializarArreglo(dim Por Valor, array Por Referencia)
	//inicializar arreglo con valores por defecto
	definir i como entero;
	Para i <- 0 hasta dim-1
		array(i)<- -1
	FinPara
	//Llenar arreglo con numeros aleatorios entre [0-20]
	Para i<-0 Hasta dim-1
		array(i)<-azar(20)
	FinPara
FinFuncion



funcion buscarNumero(numX Por Valor,dim por valor,arreglo Por Referencia, pos Por Referencia,ok Por Referencia)
	pos <- -1; ok<-falso;
	mientras (pos<dim-1) y (ok = falso) Hacer
		pos <- pos +1;
		si (numX = arreglo(pos) ) Entonces
			ok <- Verdadero;
		FinSi
	FinMientras
	
	si (ok = falso) Entonces
		pos<--1;
	FinSi
FinFuncion



funcion InformarNumero(ok,numX,pos Por Valor,arreglo por referencia,dim por valor)
	si ok Entonces
		escribir 'El numero: ',numX,' esta en la posicion: ',pos;
	sino 
		escribir 'El numero no esta. Pos=',pos;
	FinSi
	para i <- 0 hasta dim-1 Hacer
		escribir i,') ',arreglo(i);
	FinPara
	
FinFuncion



Algoritmo ejemplo
	definir ok Como Logico
	Definir dim Como Entero
	Definir numX, pos Como Entero
	
	Escribir "Ingrese la dimension del arreglo a crear: "
	Leer dim
	Dimension arreglo(dim)
	
	InicializarArreglo(dim, arreglo)
	
	Escribir "Ingrese un numero entre [0-20] a buscar: "
	Leer numX
	buscarNumero(numX,dim,arreglo,pos,ok);
	
	InformarNumero(ok,numX,pos,arreglo,dim);//Informar si dicho numero esta o no.
FinAlgoritmo
