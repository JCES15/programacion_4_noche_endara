class Empleado {

    private var salario = 1000.0

    fun obtenerSalario(): Double {
        return salario
    }

    fun aumentarSalario(valor: Double) {

        if (valor > 0) {
            salario += valor
        }
    }
}

fun main() {

    val empleado = Empleado()

    println("Salario actual: ${empleado.obtenerSalario()}")

    empleado.aumentarSalario(200.0)

    println("Nuevo salario: ${empleado.obtenerSalario()}")
}