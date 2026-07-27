// Interfaz
interface Evaluable {

    fun evaluarDesempeno()
}

// Clase Gerente
class Gerente(
    val nombre: String
) : Evaluable {

    override fun evaluarDesempeno() {
        println("$nombre fue evaluado por cumplimiento de metas.")
    }
}

// Clase Analista
class Analista(
    val nombre: String
) : Evaluable {

    override fun evaluarDesempeno() {
        println("$nombre fue evaluado por calidad de reportes.")
    }
}

fun main() {

    val gerente = Gerente("María López")
    val analista = Analista("Juan Pérez")

    gerente.evaluarDesempeno()
    analista.evaluarDesempeno()
}