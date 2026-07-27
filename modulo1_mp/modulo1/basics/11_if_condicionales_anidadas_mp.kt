fun main() {

    print("Ingrese el nombre del empleado: ")
    val nombre = readLine() ?: ""

    print("Ingrese los años de antigüedad: ")
    val antiguedad = readLine()?.toIntOrNull() ?: 0

    print("Ingrese la calificación de desempeño: ")
    val evaluacion = readLine()?.toIntOrNull() ?: 0

    if (antiguedad >= 3) {

        if (evaluacion >= 90) {
            println("$nombre es candidato para ascenso.")
        } else {
            println("$nombre cumple la antigüedad, pero no la evaluación requerida.")
        }

    } else {
        println("$nombre no cumple la antigüedad mínima para ascenso.")
    }
}