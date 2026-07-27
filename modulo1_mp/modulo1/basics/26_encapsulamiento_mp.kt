class Empleado(
    val id: Int,
    val nombre: String
) {

    // Atributo privado
    private var horasTrabajadas: Int = 0

    // Registrar horas trabajadas
    fun registrarHoras(horas: Int) {

        if (horas > 0) {
            horasTrabajadas += horas
            println("Horas registradas correctamente.")
        } else {
            println("Las horas deben ser mayores a cero.")
        }
    }

    // Consultar horas trabajadas
    fun obtenerHorasTrabajadas(): Int {
        return horasTrabajadas
    }

    // Calcular salario
    fun calcularSalario(valorHora: Double): Double {
        return horasTrabajadas * valorHora
    }

    // Mostrar información
    fun mostrarInformacion() {
        println("\n=== EMPLEADO ===")
        println("ID: $id")
        println("Nombre: $nombre")
        println("Horas trabajadas: $horasTrabajadas")
    }
}

fun main() {

    print("Ingrese el ID del empleado: ")
    val id = readLine()?.toIntOrNull() ?: 0

    print("Ingrese el nombre del empleado: ")
    val nombre = readLine() ?: ""

    val empleado = Empleado(id, nombre)

    print("Ingrese las horas trabajadas: ")
    val horas = readLine()?.toIntOrNull() ?: 0

    empleado.registrarHoras(horas)

    print("Ingrese el valor por hora: ")
    val valorHora = readLine()?.toDoubleOrNull() ?: 0.0

    empleado.mostrarInformacion()

    println("Salario a pagar: $${empleado.calcularSalario(valorHora)}")
}