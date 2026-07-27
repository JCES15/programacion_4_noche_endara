fun main() {

    var continuar = "S"

    while (continuar.uppercase() == "S") {

        print("Ingrese el nombre del empleado: ")
        val nombre = readLine() ?: ""

        print("Ingrese el cargo: ")
        val cargo = readLine() ?: ""

        println("\nEmpleado registrado:")
        println("Nombre: $nombre")
        println("Cargo: $cargo")

        print("\n¿Desea registrar otro empleado? (S/N): ")
        continuar = readLine() ?: "N"
    }

    println("Fin del registro.")
}