class Empleado(
    val id: Int,
    val nombre: String,
    val cargo: String
) {

    // Constructor secundario
    constructor(id: Int, nombre: String) :
            this(id, nombre, "Asistente") {

        println("Se asignó el cargo por defecto: Asistente")
    }

    fun mostrarDatos() {
        println("\n=== DATOS DEL EMPLEADO ===")
        println("ID: $id")
        println("Nombre: $nombre")
        println("Cargo: $cargo")
    }
}

fun main() {

    // Usando constructor principal
    val empleado1 = Empleado(
        1,
        "Juan Pérez",
        "Analista de RRHH"
    )

    // Usando constructor secundario
    val empleado2 = Empleado(
        2,
        "María López"
    )

    empleado1.mostrarDatos()
    empleado2.mostrarDatos()
}