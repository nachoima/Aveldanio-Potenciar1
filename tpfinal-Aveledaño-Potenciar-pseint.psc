Algoritmo tpFinalFinalDefinitivo
	Definir session, intentos Como Entero  
	Definir calificacion, Promedio, CalificacionMedia, CalificacionAlta Como Real
	Definir nota, notaBaja, notaAlta Como entero
	//Usuario = usuario
	//Contraseña = contraseña
	notaBaja = 10
	notaAlta = 0
	APROBADOS = 0
	DESAPROBADOS = 0
	session <- 0
	intentos <- 0
	Definir docente, Materia Como Caracter
	Escribir Sin Saltar "Ingrese su nombre de docente: "
	Leer docente
	Escribir "Bienvenido docente: " docente
	Escribir "----- A continuacion indique su materia -----"
    Escribir "Quimica" 
    Escribir "ICSE" 
    Escribir "Matematica"
    Escribir "Biologia celular"
	Escribir "IPC"
	Escribir "Fisica"
    Escribir "---------------------------------------------"
    Escribir Sin Saltar "Escriba Textualmente su materia: "
    Leer Materia
	
	Segun Materia hacer
		Caso quimica:
			Si Materia == "quimica" Entonces
				Escribir "La Materia del docente " docente " es: Quimica " 
				Escribir "Se cursa de 13 a 16 los Lun y Jue"
			FinSi
		Caso icse:
			Si Materia == "ICSE" Entonces
				Escribir "La Materia del docente " docente " es: " Materia  
				Escribir "Se cursa de 10 a 12 los SAB"
			FinSi
		Caso matematica:
			Si Materia == "Matematica" Entonces
				Escribir "La Materia del docente " docente " es:   " Materia
				Escribir "Se cursa de 10 a 13 los LUN y JUE"
			FinSi
		Caso biologia:
			Si Materia == "Biologia" Entonces
				Escribir "La Materia del docente " docente " es: "  Materia
				Escribir "Se cursa de 10 a 13 los Mar y Vie"
			FinSi
		Caso ipc:
			Si Materia == "IPC" Entonces
				Escribir "La Materia del docente " docente " es: " Materia
				Escribir "Se cursa de 20 a 23 los LUN y JUE"
			FinSi
		Caso fisica:
			Si Materia == "Fisica" Entonces
				Escribir "La Materia del docente " docente " es: " Materia
				Escribir "Se cursa de 20 a 23 los Mar y Vie"
			FinSi
			

	FinSegun
	
	Mientras (intentos <3 y session == 0) Hacer
		ESCRIBIR Sin Saltar "Ingrese el usuario: "
		Leer ULogin
		ESCRIBIR Sin Saltar "Ingrese la contraseña: "
		Leer UPass
		si (ULogin == "usuario") Entonces //en caso de cambiar el usuario cambiar el "usuario"
			si (UPass) == "contraseña" Entonces //en caso de cambiar el contraseña cambiar el "contraseña"
				Escribir  "" BIENVENIDO AL SISTEMA "" docente
				session <- 1
					Para Alumnos<-1 Hasta 10 Con Paso 1 Hacer
						Escribir "Ingrese la nota del alumno " Alumnos
						Leer nota
						//nota = Aleatorio(0, 10) en caso de que la nota sea aleatoria sacar el comentario.
						Escribir nota
						calificacion = calificacion + nota 
						si notaBaja > nota Entonces
							notaBaja = nota
						FinSi
						si notaAlta < nota Entonces
							notaAlta = nota
						SI NOTA >= 6 ENTONCES
							APROBADOS = APROBADOS + 1
						SINO
							DESAPROBADOS = DESAPROBADOS + 1
						FIN SI
					FinSi
				Fin Para
				
				Escribir "La nota mas Alta es: " notaAlta
				Escribir "La nota mas Baja es: " notaBaja
				ESCRIBIR "Número de aprobados: ", APROBADOS
				ESCRIBIR "Número de desaprobados: ", DESAPROBADOS
				Escribir "La calificacion total de todos los alumnos es: " calificacion
				Escribir "El promedio total de todos los alumnos es: " calificacion / 10 
			SiNo
				Escribir "La contraseña es incorrecta"
				intentos<- intentos+1
			FinSi
		SiNo
			Escribir "El usuario es incorrecto"
			intentos<- intentos+1
		FinSi
	FinMientras
	si (intentos==3) Entonces
		Escribir Sin Saltar"Usuario bloqueado, utilizo 3 intentos!"
		Escribir "SISTEMA BLOQUEADO: CERRANDO PROGRAMA"
	FinSi
	
FinAlgoritmo

