data class Empleado(
    val id: Int,
    val nombre: String,
    val cargo: String,
    val salario: Double
)

fun main() {

    print("Ingrese el ID: ")
    val id = readLine()?.toIntOrNull() ?: 0

    print("Ingrese el nombre: ")
    val nombre = readLine() ?: ""

    print("Ingrese el cargo: ")
    val cargo = readLine() ?: ""

    print("Ingrese el salario: ")
    val salario = readLine()?.toDoubleOrNull() ?: 0.0

    val empleado = Empleado(
        id,
        nombre,
        cargo,
        salario
    )

    println("\n=== DATOS DEL EMPLEADO ===")
    println(empleado)
}