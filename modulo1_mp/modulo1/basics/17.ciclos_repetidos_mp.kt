fun main() {

    print("Ingrese el número de departamentos: ")
    val departamentos = readLine()?.toIntOrNull() ?: 0

    for (i in 1..departamentos) {

        println("\nDepartamento $i")

        print("¿Cuántos empleados tiene?: ")
        val empleados = readLine()?.toIntOrNull() ?: 0

        for (j in 1..empleados) {

            print("Nombre del empleado $j: ")
            val nombre = readLine() ?: ""

            println("Empleado registrado: $nombre")
        }
    }
}