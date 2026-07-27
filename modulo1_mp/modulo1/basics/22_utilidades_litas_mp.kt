fun main() {

    val empleados = listOf(
        "Juan Pérez",
        "María López",
        "Carlos Ruiz"
    )

    print("Ingrese el nombre del empleado: ")
    val nombre = readLine() ?: ""

    if (empleados.contains(nombre)) {
        println("Empleado encontrado.")
    } else {
        println("Empleado no encontrado.")
    }
}