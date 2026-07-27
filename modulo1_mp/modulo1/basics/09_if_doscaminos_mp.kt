fun main() {

    print("Ingrese el nombre del empleado: ")
    val nombre = readLine() ?: ""

    print("Ingrese los años de antigüedad: ")
    val antiguedad = readLine()?.toIntOrNull() ?: 0

    if (antiguedad >= 1) {
        println("$nombre puede solicitar vacaciones.")
    } else {
        println("$nombre aún no cumple el tiempo mínimo para solicitar vacaciones.")
    }
}