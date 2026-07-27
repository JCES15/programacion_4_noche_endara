// Clase abstracta
abstract class Empleado(
    val id: Int,
    val nombre: String,
    val salario: Double
) {

    fun mostrarDatos() {
        println("ID: $id")
        println("Nombre: $nombre")
        println("Salario: $$salario")
    }

    abstract fun calcularBono()
}

// Clase hija
class Gerente(
    id: Int,
    nombre: String,
    salario: Double
) : Empleado(id, nombre, salario) {

    override fun calcularBono() {

        val bono = salario * 0.20

        println("Bono del gerente: $$bono")
    }
}

// Clase hija
class Asistente(
    id: Int,
    nombre: String,
    salario: Double
) : Empleado(id, nombre, salario) {

    override fun calcularBono() {

        val bono = salario * 0.10

        println("Bono del asistente: $$bono")
    }
}

fun main() {

    val gerente = Gerente(
        1,
        "María López",
        2500.0
    )

    val asistente = Asistente(
        2,
        "Juan Pérez",
        1200.0
    )

    gerente.mostrarDatos()
    gerente.calcularBono()

    println()

    asistente.mostrarDatos()
    asistente.calcularBono()
}