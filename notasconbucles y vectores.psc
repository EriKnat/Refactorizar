Algoritmo notas
	contadorap=0
	contadorep=0
	Dimension vector(35)
	Para i=0 Hasta 34 Con Paso 1 Hacer
		notacontinua=azar(100)
		vector(i)=notacontinua
		Si notacontinua>59 Entonces
			contadorap=contadorap+1
		SiNo
			contadorep=contadorep+1
		Fin Si
	Fin Para
	
	Imprimir "El numero de aprobados es: ",contadorep
	Imprimir "El numero de reprobados es: ",contadorap
	Escribir "Alumnos con notas mayores a 90"
	Para i=0 Hasta 34 Con Paso 1 Hacer
		Si vector(i)>90 Entonces
			Imprimir"Alumno ",i,"= ",vector(i)
		Fin Si
	Fin Para
	Escribir "Alumnos con notas entre 60 y 90"
	Para i=0 Hasta 34 Con Paso 1 Hacer
		Si vector(i)>= 60 Entonces
			Imprimir "Alumno",i,"= ",vector(i)
		Fin Si
	Fin Para
	Escribir "Alumnos con notas menores a 60"
	Para i=0 Hasta 34 Con Paso 1 Hacer
		Si vector(i)<60 Entonces
			Imprimir"Alumno",i,"= ",vector(i)
		Fin Si
	Fin Para
	contador3=0
	Dimension vector2(35)
	Para i=0 Hasta 34 Con Paso 1 Hacer
		asistencia=azar(35)
		vector2(i)=asistencia
		Si asistencia<=27 Entonces
			contador3=contador3+1
			Imprimir"Alumno ",i,"tiene una asistencia: ",vector2(i)	
			
		Fin Si
		
	Fin Para
	Imprimir contador3," Es la cantidad de alumnos con menos de las asistencias requeridas para la evaluacion final"
FinAlgoritmo
