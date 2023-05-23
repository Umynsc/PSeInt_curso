Funcion InicializarVector(v,DF)
	definir i como entero;
	para i <- 0 Hasta (DF-1) Hacer
		v(i) <- -1;
	FinPara
FinFuncion
//--------------------------------------------------------
funcion escribirMenu(opMenu por referencia)
	escribir '1) Encolar';
	escribir '2) DesEncolar';
	escribir '3) Frente';
	escribir '4) ¿Esta Vacia?';
	Escribir '5) Cantidad de elementos';
	leer opMenu;	
FinFuncion
//-----------------------------------------
funcion leerValor(N por referencia)
	Escribir 'Ingrese el valor';
	leer N;
FinFuncion
//-----------------------------------------
funcion Encolar(v Por Referencia,DF por valor,dl Por Referencia)
	definir n como entero;
	si (dl+1 < DF) y (dl >=0) Entonces
		para i <- (dl) hasta 0 Hacer
			v(i+1)<-v(i)
		FinPara
		leerValor(n);
		v(0)<-n;
		dl <- dl +1 ;
	sino
		si (dl < 0) Entonces
			leerValor(n);
			v(0)<-n;
			dl <- dl+1;
		SiNo
			escribir ''; escribir '_sin espacio_'; escribir ''; 
		FinSi
	FinSi	
	
FinFuncion
//-----------------------------------------
funcion Desencolar(v Por Referencia,DF por valor,dl Por Referencia)
	si (dl>=0) Entonces
		v(dl) <- -1;
		dl<-dl-1;
	SiNo
		escribir ''; escribir '_sin elementos_'; escribir ''; 
	FinSi
FinFuncion
//-----------------------------------------

funcion frente (v por referencia,dl por valor)
	si dl >= 0 Entonces
		escribir '';escribir 'Frente: ',v(0);escribir '';
	SiNo
		escribir '';Escribir 'Sin Elementos para mostrar';escribir '';
	FinSi
FinFuncion
//-----------------------------------------
funcion ok <- vacia(v Por Referencia,DF por valor,dl Por Referencia)
	si dl < 0 Entonces
		ok <- Verdadero;
	SiNo
		ok <- Falso;
	FinSi
FinFuncion
//-----------------------------------------
funcion N <- cantElem(v Por Referencia,DF por valor,dl Por Referencia)
	definir N,i como entero;
	N<-0;
	si dl >=0 Entonces
		para i <- 0	hasta dl Hacer
			N<-N+1;
		FinPara
	sino 
		N <- 0;
	FinSi
FinFuncion
//-----------------------------------------
funcion Menu(v,DF,dl)
	definir opMenu como entero;
	escribirMenu(opMenu);
	mientras opMenu <> 0 Hacer
		Segun opMenu Hacer
			1:
				Encolar(v,DF,dl);
			2:
				Desencolar(v,DF,dl);
			3:
				Frente(v,dl);
			4:
				escribir '';escribir vacia(v,DF,dl);escribir '';	
			5:
				escribir ''; Escribir 'Hay ',cantElem(v,DF,dl),' elementos en la cola.';escribir ''; 
		FinSegun
		escribirMenu(opMenu);
		
	FinMientras
FinFuncion
//------------------------------------------
Algoritmo Cola
	definir DF,dl como entero;
	escribir 'Tamaño de Vector';
	leer DF;
	dl <- -1;
	Dimension v(DF);
	InicializarVector(v,DF);
	Menu(v,DF,dl);
FinAlgoritmo