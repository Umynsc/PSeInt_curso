funcion procesarcadena(dato por valor,invertida por referencia)
	definir indice como entero;
	definir auxdato Como caracter;
	invertida <- '';
	indice <- longitud(dato)-1;
	auxdato<-'';
	mientras (indice <> -1) Hacer
		auxdato <- subcadena(dato,(indice),indice) ;
		indice <- indice -1;
		invertida <- invertida+auxdato;
	FinMientras
FinFuncion


funcion cargarVector(Vcar por referencia)
	definir i como entero;
	definir aux,invertida como caracter;
	definir ok como logico;
	para i <- 0 hasta 9 Hacer
		ok <- Falso;
		mientras (ok = falso) Hacer
			escribir i,') Ingrese la palabra ';
			leer aux;
			procesarcadena(aux,invertida);
			si (aux = invertida) Entonces
				vcar(i) <- aux;
				ok <- Verdadero;
			SiNo
				escribir 'No se permite esa palabra '; 
			FinSi
		FinMientras
	FinPara
FinFuncion

funcion informarV(vcar Por Referencia)
	definir i como entero;
	para i <- 0 hasta 9 Hacer
		escribir i+1,') ',vcar(i);
	FinPara
	
FinFuncion

	
Algoritmo arreglos_6
	definir vcar como caracter;
	Dimension Vcar(10);
	cargarVector(Vcar);
	InformarV(vcar);
	
FinAlgoritmo
