enum class TipoContrato {
    TIEMPO_COMPLETO,
    MEDIO_TIEMPO,
    TEMPORAL,
    PRACTICAS
}

fun main() {

    print("Seleccione el tipo de contrato (1-4): ")
    val opcion = readLine()?.toIntOrNull() ?: 0

    val contrato = when (opcion) {
        1 -> TipoContrato.TIEMPO_COMPLETO
        2 -> TipoContrato.MEDIO_TIEMPO
        3 -> TipoContrato.TEMPORAL
        4 -> TipoContrato.PRACTICAS
        else -> TipoContrato.TEMPORAL
    }

    println("Tipo de contrato seleccionado: $contrato")
}