Algoritmo ejercicio3
	definir alumno Como Caracter;
	definir nota como real;
	definir confirmacionNota,confirmacionAlumno como caracter;
	definir cantNota como entero;
	definir sumaNota,promedio como real;
	
	cantNota <-0;
	sumaNota<-0;
	
	escribir '¿Ingresas un alumno ?';
	leer confirmacionAlumno;
	mientras (confirmacionAlumno = 'si') hacer
		escribir 'Nombre del alumno: ';
		leer alumno;
		escribir 'Nota del alumno: ';
		leer nota;
		sumaNota<-sumaNota+nota;
		cantNota<-cantNota+1;
		escribir '¿Ingresas otra nota ?';
		leer confirmacionNota;
		Mientras confirmacionNota = 'si' Hacer
			escribir 'Ingresa la nota: ';
			leer nota;
			sumaNota<-sumaNota+nota;
			cantNota<-cantNota+1;
			
			escribir '¿Ingresas otra nota ?';
			leer confirmacionNota;
		FinMientras
		promedio <- sumaNota / cantNota;
		escribir 'El promedio de ',alumno,' fue: ',promedio;
		escribir '¿Ingresas otro alumno ?';
		leer confirmacionAlumno;
	FinMientras

	
FinAlgoritmo
