Algoritmo estacionamiento
	definir ingreso Como Entero;
	definir salida Como Entero;
	
	
	escribir 'ingrese la entrada ';
	leer ingreso;
	escribir 'Ingrese la salida ';
	leer salida;
	
	escribir 'Ingreso: ',ingreso,'HS. ';
	escribir 'Salida: ',salida,'HS. ';
	
	si (ingreso < salida) Entonces
		escribir 'Horas totales: ',salida - ingreso,'hs.';
	SiNo
		si (ingreso = salida) Entonces
			escribir 'Horas totales: 24hs.';
		SiNo
			escribir 'Horas totales: ',(salida - ingreso)+24,'hs.';
		FinSi
	FinSi
	
	
FinAlgoritmo
