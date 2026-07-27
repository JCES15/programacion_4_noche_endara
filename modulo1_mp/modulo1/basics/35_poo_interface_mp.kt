interface Capacitacion {

    fun mostrarProceso() {
        println("Proceso de capacitación de empleados.")
    }
}

interface Evaluacion {

    fun mostrarProceso() {
        println("Proceso de evaluación de desempeño.")
    }
}

class AnalistaRRHH : Capacitacion, Evaluacion {

    override fun mostrarProceso() {

        println("=== PROCESOS DE RRHH ===")

        super<Capacitacion>.mostrarProceso()
        super<Evaluacion>.mostrarProceso()
    }
}

fun main() {

    val analista = AnalistaRRHH()

    analista.mostrarProceso()
}