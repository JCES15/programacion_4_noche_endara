fun main() {

    print("¿Cuántos empleados desea registrar?: ")
    val cantidad = readLine()?.toIntOrNull() ?: 0

    for (i in 1..cantidad) {

        println("\nEmpleado #$i")

        print("Nombre: ")
        val nombre = readLine() ?: ""

        print("Cargo: ")
        val cargo = readLine() ?: ""

        println("Empleado registrado:")
        println("Nombre: $nombre")
        println("Cargo: $cargo")
    }
}