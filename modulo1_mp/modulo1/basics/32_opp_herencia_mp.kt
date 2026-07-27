// Clase padre
open class Empleado(
    val id: Int,
    val nombre: String,
    val salario: Double
) {

    open fun mostrarDatos() {
        println("\n=== EMPLEADO ===")
        println("ID: $id")
        println("Nombre: $nombre")
        println("Salario: $$salario")
    }
}

// Clase hija Gerente
class Gerente(
    id: Int,
    nombre: String,
    salario: Double,
    val departamento: String
) : Empleado(id, nombre, salario) {

    override fun mostrarDatos() {
        println("\n=== GERENTE ===")
        println("ID: $id")
        println("Nombre: $nombre")
        println("Salario: $$salario")
        println("Departamento: $departamento")
    }
}

// Clase hija Asistente
class Asistente(
    id: Int,
    nombre: String,
    salario: Double,
    val extension: String
) : Empleado(id, nombre, salario) {

    override fun mostrarDatos() {
        println("\n=== ASISTENTE ===")
        println("ID: $id")
        println("Nombre: $nombre")
        println("Salario: $$salario")
        println("Extensión telefónica: $extension")
    }
}

fun main() {

    val gerente = Gerente(
        1,
        "María López",
        2500.0,
        "Recursos Humanos"
    )

    val asistente = Asistente(
        2,
        "Juan Pérez",
        1200.0,
        "101"
    )

    gerente.mostrarDatos()
    asistente.mostrarDatos()
}