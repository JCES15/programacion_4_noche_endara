fun main() {

    val calcularBono = { salario: Double ->
        salario * 0.10
    }

    print("Ingrese el salario del empleado: ")
    val salario = readLine()?.toDoubleOrNull() ?: 0.0

    val bono = calcularBono(salario)

    println("Bono del empleado: $$bono")
}