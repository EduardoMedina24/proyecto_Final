Algoritmo Quiz
	
    
    Definir preguntas, respuestas Como Caracter
    Definir correcta, respuestaUsuario, puntaje, totalPreguntas, i, j, preguntaAleatoria, yaPreguntada Como Entero
    Dimension preguntas[10], respuestas[10,3], correcta[10], yaPreguntada[10]
	
    
    preguntas[1] <- "�Cu�l es la capital de Colombia?"
    respuestas[1, 1] <- "Bogot�"
    respuestas[1, 2] <- "Medell�n"
    respuestas[1, 3] <- "Cali"
    correcta[1] <- 1
	
    preguntas[2] <- "�Cu�l es el oc�ano que ba�a las costas occidentales de Sudam�rica?"
    respuestas[2, 1] <- "Atl�ntico"
    respuestas[2, 2] <- "Pac�fico"
    respuestas[2, 3] <- "�ndico"
    correcta[2] <- 2
	
    preguntas[3] <- "�Qui�n pint� la Mona Lisa?"
    respuestas[3, 1] <- "Vincent van Gogh"
    respuestas[3, 2] <- "Leonardo da Vinci"
    respuestas[3, 3] <- "Pablo Picasso"
    correcta[3] <- 2
	
    preguntas[4] <- "�Cu�l es el planeta m�s cercano al Sol?"
    respuestas[4, 1] <- "Marte"
    respuestas[4, 2] <- "Venus"
    respuestas[4, 3] <- "Mercurio"
    correcta[4] <- 3
	
    preguntas[5] <- "�En qu� a�o se descubri� Am�rica?"
    respuestas[5, 1] <- "1492"
    respuestas[5, 2] <- "1519"
    respuestas[5, 3] <- "1607"
    correcta[5] <- 1
	
    preguntas[6] <- "�Cu�l es la f�rmula qu�mica del agua?"
    respuestas[6, 1] <- "CO2"
    respuestas[6, 2] <- "H2O"
    respuestas[6, 3] <- "NaCl"
    correcta[6] <- 2
	
    preguntas[7] <- "�Qui�n escribi� la obra Don Quijote de la Mancha?"
    respuestas[7, 1] <- "Miguel de Cervantes"
    respuestas[7, 2] <- "William Shakespeare"
    respuestas[7, 3] <- "Charles Dickens"
    correcta[7] <- 1
	
    preguntas[8] <- "�Cu�l es el pa�s m�s grande del mundo en extensi�n territorial?"
    respuestas[8, 1] <- "Rusia"
    respuestas[8, 2] <- "Canad�"
    respuestas[8, 3] <- "China"
    correcta[8] <- 1
	
    preguntas[9] <- "�Cu�l es la capital de Francia?"
    respuestas[9, 1] <- "Roma"
    respuestas[9, 2] <- "Londres"
    respuestas[9, 3] <- "Par�s"
    correcta[9] <- 3
	
    preguntas[10] <- "�Cu�l es el animal m�s r�pido del mundo?"
    respuestas[10, 1] <- "Le�n"
    respuestas[10, 2] <- "Guepardo"
    respuestas[10, 3] <- "�guila"
    correcta[10] <- 2
	
  
    puntaje <- 0
    totalPreguntas <- 10 
	
    
    Para i <- 1 Hasta 10 Hacer
        yaPreguntada[i] <- 0
    FinPara
	
    
    Para i <- 1 Hasta totalPreguntas Hacer
        Repetir
            preguntaAleatoria <- Aleatorio(1, 10) 
        Hasta Que yaPreguntada[preguntaAleatoria] = 0
        yaPreguntada[preguntaAleatoria] <- 1
		
        
        Escribir preguntas[preguntaAleatoria]
        Para j <- 1 Hasta 3 Hacer
            Escribir j, ". ", respuestas[preguntaAleatoria, j]
        FinPara
		
      
        Leer respuestaUsuario
		
        Si respuestaUsuario = correcta[preguntaAleatoria] Entonces
            Escribir "�Correcto!"
            puntaje <- puntaje + 1
        SiNo
            Escribir "Incorrecto."
        FinSi
    FinPara
	
    
    porcentaje <- (puntaje / totalPreguntas) * 100
    Escribir "Tu puntaje final es: ", porcentaje, "%"
	
   
    Si porcentaje >= 60 Entonces
        Escribir "�Felicidades! Has aprobado el quiz."
    SiNo
        Escribir "Sigue practicando."
    FinSi
	
FinAlgoritmo
