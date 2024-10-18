import random


puntajes_guardados = []

def mostrar_menu():
    print("1. Iniciar juego")
    print("2. Ver instrucciones")
    print("3. Ver puntajes")
    print("4. Salir")
    opcion = input("Selecciona una opción: ")
    return opcion

def mostrar_instrucciones():
    print("Este es un juego de preguntas y respuestas.")
    print("Responde correctamente para ganar puntos.")
    print("¡Buena suerte!")

def mostrar_puntajes():
    if not puntajes_guardados:
        print("No hay puntajes guardados.")
    else:
        print("Puntajes Guardados:")
        for idx, puntaje in enumerate(puntajes_guardados, start=1):
            print(f"{idx}. {puntaje}%")
    
def iniciar_juego():
    preguntas = [
    {
        "pregunta": "¿Cuál es la capital de Colombia?",
        "opciones": ["1. Bogotá", "2. Medellín", "3. Cali"],
        "correcta": 1
    },
    {
        "pregunta": "¿Cuál es el océano que baña las costas occidentales de Sudamérica?",
        "opciones": ["1. Atlántico", "2. Pacífico", "3. Índico"],
        "correcta": 2
    },
    {
        "pregunta": "¿Quién pintó la Mona Lisa?",
        "opciones": ["1. Vincent van Gogh", "2. Leonardo da Vinci", "3. Pablo Picasso"],
        "correcta": 2
    },
    {
        "pregunta": "¿Cuál es el planeta más cercano al Sol?",
        "opciones": ["1. Marte", "2. Venus", "3. Mercurio"],
        "correcta": 3
    },
    {
        "pregunta": "¿En qué año se descubrió América?",
        "opciones": ["1. 1492", "2. 1519", "3. 1607"],
        "correcta": 1
    },
    {
        "pregunta": "¿Cuál es la fórmula química del agua?",
        "opciones": ["1. CO2", "2. H2O", "3. NaCl"],
        "correcta": 2
    },
    {
        "pregunta": "¿Quién escribió la obra Don Quijote de la Mancha?",
        "opciones": ["1. Miguel de Cervantes", "2. William Shakespeare", "3. Charles Dickens"],
        "correcta": 1
    },
    {
        "pregunta": "¿Cuál es el país más grande del mundo en extensión territorial?",
        "opciones": ["1. Rusia", "2. Canadá", "3. China"],
        "correcta": 1
    },
    {
        "pregunta": "¿Cuál es la capital de Francia?",
        "opciones": ["1. Roma", "2. Londres", "3. París"],
        "correcta": 3
    },
    {
        "pregunta": "¿Cuál es el animal más rápido del mundo?",
        "opciones": ["1. León", "2. Guepardo", "3. Águila"],
        "correcta": 2
    }
]

    
    puntaje = 0
    total_preguntas = len(preguntas)
    
    for i in range(total_preguntas):
        print(preguntas[i]["pregunta"])
        for opcion in preguntas[i]["opciones"]:
            print(opcion)
        
        respuesta = int(input("Selecciona tu respuesta: "))
        if respuesta == preguntas[i]["correcta"]:
            print("¡Correcto!")
            puntaje += 1
        else:
            print("Incorrecto.")
    
    porcentaje = (puntaje / total_preguntas) * 100
    print(f"Tu puntaje final es: {porcentaje}%")
    

    puntajes_guardados.append(porcentaje)

    if porcentaje >= 60:
        print("¡Felicidades, aprobaste el quiz!")
    else:
        print("No aprobaste, sigue practicando.")

def main():
    while True:
        opcion = mostrar_menu()
        if opcion == "1":
            iniciar_juego()
        elif opcion == "2":
            mostrar_instrucciones()
        elif opcion == "3":
            mostrar_puntajes()
        elif opcion == "4":
            print("Saliendo del juego.")
            break
        else:
            print("Opción no válida, intenta de nuevo.")

if __name__ == "__main__":
    main()
