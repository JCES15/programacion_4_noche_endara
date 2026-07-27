fun main() {

    print("Ingrese el nombre del empleado: ")
    val nombre = readLine() ?: ""

    print("Ingrese el salario del empleado: ")
    val salario = readLine()?.toDoubleOrNull() ?: 0.0

    if (salario < 1000) {
        println("$nombre puede recibir un bono de ayuda económica.")
    }

    println("Proceso finalizado.")
    println("Nombre: $nombre, Sueldo: $$salario")
}