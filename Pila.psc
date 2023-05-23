funcion InicializarVector(v por referencia,DF Por Valor)
	definir i como entero;
	para i <- 0 Hasta (DF-1) Hacer
		v(i) <- -1;
	FinPara
FinFuncion
//--------------------------------------------------------
funcion escribirMenu(opMenu por referencia)
	escribir '1) Apilar';
	escribir '2) Desapilar';
	escribir '3) TopePila';
	escribir '4) ¿Esta Vacia?';
	Escribir '5) Cantidad de elementos';
	leer opMenu;	
FinFuncion
//--------------------------------------------------------
Funcion Apilar (v por referencia,DF por valor,dl Por Referencia)
	si (dl+1 < DF) Entonces
		dl <- dl+1;
		leer v(dl);
	SiNo
		escribir '';
		escribir '_Pila LLena_';
		escribir '';
	FinSi
FinFuncion
//----------------------------------------------------------
funcion N <- Desapilar(v por referencia,DF por valor,dl por referencia)
	definir N como entero;
	si dl >= 0 Entonces
		N <- v(dl);
		v(dl) <- -1;
		dl <- dl-1;
	SiNo
		escribir '';
		escribir '_Pila Vacia_';
		escribir '';
	FinSi
FinFuncion
//-------------------------------------------------------
funcion N <- cantElem(v,DF,dl)
	definir i,N como entero;
	N<-0;
	si dl >= 0 Entonces
		para i <- 0 hasta dl Hacer
			N<- N+1;
		FinPara
	SiNo
		N <- 0;
	FinSi

FinFuncion
//--------------------------------------------------------
funcion ok <- vacia(v por referencia, DF por valor, dl por valor)
	definir ok como logico;
	si dl < 0 Entonces
		ok <- Verdadero;
	sino 
		ok<- Falso;
	FinSi
FinFuncion
//--------------------------------------------------------
funcion Menu(v,DF,dl)
	definir opMenu como entero;
	
	escribirMenu(opMenu);
	mientras opMenu <> 0 Hacer
	Segun opMenu Hacer
		1:
			Apilar(v,DF,dl);
		2:
			escribir Desapilar(v,DF,dl);
		3:
			escribir v(dl);
		4:
			escribir vacia(v,DF,dl);
		5:
			Escribir 'Hay ',cantElem(v,DF,dl),' elementos en la pila.'; 
	FinSegun
	escribirMenu(opMenu);
	
	FinMientras
FinFuncion
//--------------------------------------------------------
Algoritmo Pila
	definir DF,dl como entero;
	escribir 'Tamaño de Vector';
	leer DF;
	dl <- -1;
	Dimension v(DF);
	InicializarVector(v,DF);
	Menu(v,DF,dl);
FinAlgoritmo