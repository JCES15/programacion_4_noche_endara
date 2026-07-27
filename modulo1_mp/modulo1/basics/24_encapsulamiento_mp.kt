class Empleado(
    val codigo: String,
    val nombre: String
) {

    // Atributos privados
    private var salario: Double = 0.0
    private var diasVacaciones: Int = 0

    // Método para cambiar salario
    fun actualizarSalario(nuevoSalario: Double) {

        if (nuevoSalario > 0) {
            salario = nuevoSalario
            println("Salario actualizado correctamente.")
        } else {
            println("El salario no puede ser negativo.")
        }
    }

    // Método para consultar salario
    fun consultarSalario(): Double {
        return salario
    }

    // Método para asignar vacaciones
    fun asignarVacaciones(dias: Int) {

        if (dias >= 0) {
            diasVacaciones = dias
        }
    }

    // Método para consultar vacaciones
    fun consultarVacaciones(): Int {
        return diasVacaciones
    }

    fun mostrarEmpleado() {

        println("\n=== DATOS DEL EMPLEADO ===")
        println("Código: $codigo")
        println("Nombre: $nombre")
        println("Salario: $$salario")
        println("Vacaciones: $diasVacaciones días")
    }
}

fun main() {

    print("Código del empleado: ")
    val codigo = readLine() ?: ""

    print("Nombre del empleado: ")
    val nombre = readLine() ?: ""

    val empleado = Empleado(codigo, nombre)

    print("Ingrese el salario: ")
    val salario = readLine()?.toDoubleOrNull() ?: 0.0

    empleado.actualizarSalario(salario)

    print("Ingrese días de vacaciones: ")
    val vacaciones = readLine()?.toIntOrNull() ?: 0

    empleado.asignarVacaciones(vacaciones)

    empleado.mostrarEmpleado()
}