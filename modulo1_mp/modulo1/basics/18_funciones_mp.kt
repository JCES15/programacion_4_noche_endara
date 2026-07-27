fun calcularSalarioNeto(salario: Double): Double {

    val descuento = salario * 0.0945

    return salario - descuento
}

fun main() {

    print("Ingrese el nombre del empleado: ")
    val nombre = readLine() ?: ""

    print("Ingrese el salario: ")
    val salario = readLine()?.toDoubleOrNull() ?: 0.0

    val salarioNeto = calcularSalarioNeto(salario)

    println("\nEmpleado: $nombre")
    println("Salario Neto: $$salarioNeto")
}