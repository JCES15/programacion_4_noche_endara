object RecursosHumanos {

    private val empleados = mutableListOf<String>()

    fun agregarEmpleado(nombre: String) {
        empleados.add(nombre)
        println("Empleado registrado correctamente.")
    }

    fun listarEmpleados() {

        println("\n=== LISTA DE EMPLEADOS ===")

        if (empleados.isEmpty()) {
            println("No existen empleados registrados.")
        } else {
            empleados.forEach {
                println(it)
            }
        }
    }
}

fun main() {

    RecursosHumanos.agregarEmpleado("Juan Pérez")
    RecursosHumanos.agregarEmpleado("María López")
    RecursosHumanos.agregarEmpleado("Carlos Ruiz")

    RecursosHumanos.listarEmpleados()
}