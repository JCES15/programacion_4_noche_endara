fun main() {

    print("Ingrese el nombre del empleado: ")
    val nombre = readLine() ?: ""

    print("Ingrese el salario: ")
    val salario = readLine()?.toDoubleOrNull() ?: 0.0

    when {
        salario >= 2000 -> println("$nombre pertenece a la categoría Gerencial.")
        salario >= 1200 -> println("$nombre pertenece a la categoría Profesional.")
        salario >= 600 -> println("$nombre pertenece a la categoría Administrativa.")
        else -> println("$nombre pertenece a la categoría Operativa.")
    }
}