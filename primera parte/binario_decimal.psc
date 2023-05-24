funcion decimalBinario(num por valor) 
	definir auxResto Como Entero;
	definir numBin como cadena;
	numBin <- '';
	mientras (num <> 0) Hacer
		auxResto <- num mod 2;
		numBin <- ConvertirATexto(auxResto) + numBin;
		num <- trunc(num / 2);

	FinMientras
	escribir '*',numBin;
Finfuncion

funcion binarioDecimal(num por valor)
	definir auxresto,numDec,indice como entero;
	numDec <- 0;
	indice<-0;
	
	mientras (num <> 0) Hacer
		auxresto <- num mod 10;
		numDec <- numDec + (auxresto*(2^indice));
		num <- trunc(num / 10);
		indice <- indice +1;
		
	FinMientras
	Escribir '*',numDec;
	
FinFuncion





Algoritmo sin_titulo
	definir num,eleccion como entero;
	
	escribir '1) convertir de decimal a binario';
	escribir '2) convertir de binario a decimal';
	escribir '0) salir';
	leer eleccion;
	mientras (eleccion <> 0) Hacer
		escribir 'Ingrese el numero a convertir';
		leer num;
		si (eleccion = 1) Entonces
			decimalBinario(num);
		FinSi
		si (eleccion =2) Entonces
			binarioDecimal(num);
		FinSi
		
		escribir '1) convertir de decimal a binario';
		escribir '2) convertir de binario a decimal';
		escribir '0) salir';
		leer eleccion;		
	FinMientras
	
	
FinAlgoritmo
