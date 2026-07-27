fun main() {

    val salarios = mapOf(
        "Juan Pérez" to 1200.0,
        "María López" to 1500.0,
        "Carlos Ruiz" to 1800.0
    )

    println("=== SALARIOS ===")

    for ((nombre, salario) in salarios) {
        println("$nombre -> $$salario")
    }
}