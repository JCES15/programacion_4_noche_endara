
    
 
fun main() {

    print("Ingrese el nombre del empleado: ")
    val nombre = readLine() ?: ""

    print("Ingrese la edad del empleado: ")
    val edad = readLine()?.toIntOrNull() ?: 0

    print("Ingrese el cargo del empleado: ")
    val cargo = readLine() ?: ""

    print("Ingrese el salario: ")
    val salario = readLine()?.toDoubleOrNull() ?: 0.0

    println("\n=== DATOS DEL EMPLEADO ===")
    println("Nombre: $nombre")
    println("Edad: $edad")
    println("Cargo: $cargo")
    println("Salario: $$salario")
}