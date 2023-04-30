Funcion respuesta <- vertrueorfalse ( vector1,resultado,cantidaddequipos) 
	respuesta=0
	Para i=0 Hasta cantidaddequipos-1 Con Paso 1 Hacer
		Si vector1[i]=resultado Entonces
			respuesta=1
		Fin Si
	Fin Para
	
Fin Funcion

Algoritmo torneorelampagovectores
	Escribir "Ingrese una cantidad de equipos multiplo de 4"
	Leer cantidaddequipos
	
	Dimension vector1[cantidaddequipos]	
	
	//Dimension ocurrencias[8]
	
	Para i=0 Hasta cantidaddequipos-1 Con Paso 1 Hacer
		resultado=azar(cantidaddequipos)+1
		respuesta=vertrueorfalse(vector1,resultado,cantidaddequipos)
		Mientras respuesta=1 Hacer
			resultado=azar(cantidaddequipos)+1
			respuesta=vertrueorfalse(vector1,resultado,cantidaddequipos)
		Fin Mientras
		vector1[i]=resultado
		Imprimir vector1[i]
		
	Fin Para
	Dimension vector2[cantidaddequipos/2]
	Mientras cantidaddequipos>1 Hacer
		Para i=0 Hasta cantidaddequipos-1 Con Paso 2 Hacer
			Escribir "Equipo ",vector1[i]," vs Equipo ",vector1[i+1]
			valor1=azar(4)
			valor2=azar(4)
			Escribir valor1," ", valor2
			Si valor1>valor2 Entonces
				vector2[i/2]=vector1[i]
			SiNo
				vector2[i/2]=vector1[i+1]
			Fin Si
		Fin Para
		cantidaddequipos=cantidaddequipos/2
		//
		Para j=0 Hasta cantidaddequipos-1 Con Paso 1 Hacer
			vector1[j]=vector2[j]
		Fin Para
		Escribir "=========================================="
	Fin Mientras
	Escribir "Campeon: Equipo ",vector2[0]
FinAlgoritmo

