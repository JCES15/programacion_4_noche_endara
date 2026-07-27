fun main() {

    println("=== SISTEMA DE RECURSOS HUMANOS ===")
    println("1. Registrar empleado")
    println("2. Consultar empleado")
    println("3. Generar nómina")

    print("Seleccione una opción: ")
    val opcion = readLine()?.toIntOrNull() ?: 0

    when (opcion) {

        1 -> {
            println("\n--- Registro de Empleado ---")

            print("Ingrese el nombre: ")
            val nombre = readLine() ?: ""

            print("Ingrese el cargo: ")
            val cargo = readLine() ?: ""

            println("Empleado registrado correctamente.")
            println("Nombre: $nombre")
            println("Cargo: $cargo")
        }

        2 -> {
            println("\n--- Consulta de Empleado ---")

            print("Ingrese el ID del empleado: ")
            val id = readLine() ?: ""

            println("Buscando información del empleado $id...")
            println("Consulta finalizada.")
        }

        3 -> {
            println("\n--- Generación de Nómina ---")

            print("Ingrese el salario: ")
            val salario = readLine()?.toDoubleOrNull() ?: 0.0

            val descuento = salario * 0.0945
            val neto = salario - descuento

            println("Salario: $$salario")
            println("Descuento: $$descuento")
            println("Salario Neto: $$neto")
        }

        else -> {
            println("Opción no válida.")
        }
    }
}