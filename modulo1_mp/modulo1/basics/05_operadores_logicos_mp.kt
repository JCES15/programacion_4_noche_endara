fun main() {

    print("Años en la empresa: ")
    val anios = readLine()?.toIntOrNull() ?: 0

    print("Calificación de desempeño: ")
    val evaluacion = readLine()?.toIntOrNull() ?: 0

    if (anios > 2 && evaluacion >= 90) {
        println("Empleado apto para bono.")
    } else {
        println("Empleado no apto para bono.")
    }
}