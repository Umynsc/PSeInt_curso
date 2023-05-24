Funcion leercadena (dato por referencia) 
	escribir 'Escribe la palabra';
	leer dato;
FinFuncion


funcion procesarcadena(dato por valor,invertida por referencia)
	definir indice como entero;
	definir auxdato Como cadena;
	invertida <- '';
	indice <- longitud(dato);
	auxdato<-'';
	mientras (indice <> 0) Hacer
		auxdato <- subcadena(dato,(indice),indice) ;
		indice <- indice -1;
		invertida <- invertida+auxdato;
	FinMientras

FinFuncion


funcion Informarcadena(dato por valor,invertida por valor)
	si (dato = invertida) Entonces
		escribir '!! (',dato,') es un palindromo: ',invertida;
	SiNo
		escribir '(',dato,') NO es un palindromo porque: ',invertida;		
	FinSi
FinFuncion

Algoritmo sin_titulo
	definir dato,invertida como cadena;
	
	leercadena(dato);
	procesarcadena(dato,invertida);
	informarcadena(dato,invertida);
	
	
FinAlgoritmo
