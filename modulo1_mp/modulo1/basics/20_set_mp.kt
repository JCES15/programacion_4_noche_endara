fun main() {

    val codigosEmpleados = mutableSetOf<String>()

    for (i in 1..3) {

        print("Ingrese el código del empleado: ")
        val codigo = readLine() ?: ""

        codigosEmpleados.add(codigo)
    }

    println("\n=== CÓDIGOS REGISTRADOS ===")

    for (codigo in codigosEmpleados) {
        println(codigo)
    }
}