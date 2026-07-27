fun main() {

    println("=== SISTEMA DE RECURSOS HUMANOS ===")
    println("1. Recursos Humanos")
    println("2. Contabilidad")
    println("3. Sistemas")
    println("4. Ventas")

    print("Seleccione un departamento: ")
    val opcion = readLine()?.toIntOrNull() ?: 0

    when (opcion) {
        1 -> println("Ha seleccionado el departamento de Recursos Humanos.")
        2 -> println("Ha seleccionado el departamento de Contabilidad.")
        3 -> println("Ha seleccionado el departamento de Sistemas.")
        4 -> println("Ha seleccionado el departamento de Ventas.")
        else -> println("Opción no válida.")
    }
}