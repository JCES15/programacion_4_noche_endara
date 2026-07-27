fun main() {

    print("Ingrese el nombre del empleado: ")
    val nombre = readLine() ?: ""

    print("Ingrese la calificación de desempeño (0-100): ")
    val calificacion = readLine()?.toIntOrNull() ?: 0

    if (calificacion >= 90) {
        println("$nombre tiene un desempeño EXCELENTE.")
    } else if (calificacion >= 75) {
        println("$nombre tiene un desempeño BUENO.")
    } else if (calificacion >= 60) {
        println("$nombre tiene un desempeño REGULAR.")
    } else {
        println("$nombre necesita mejorar su desempeño.")
    }
}