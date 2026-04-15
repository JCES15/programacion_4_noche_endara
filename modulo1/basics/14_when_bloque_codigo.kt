// Online Kotlin compiler to run Kotlin program online
// Print "Try programiz.pro" message

fun main() {
  println( "WHEN con bloques de codigo")
  println("Nombre paciente")
  val paciente = readLine()?.trim()?:""
  println("Nivel de Alerta CRITICO/URGENTE/MODERADO/LEVE:")
  val nivel = readLine()?.trim()?.uppercase()?:""
  
  when(nivel) {
      "CRITICO" -> {
          println("ALERTA CRITICA -paciente. $paciente")
          println("Accion Inmediata")
          println("Registrar hora de accion de protocolo")
      }
      "URGENTE" -> {
          println("URGENTE -PACIENTE. $paciente")
          println("Priorizar Sala de espera")
          println("Reevaluar en 15 minutos")
      }
      "MODERADO"-> println("Moderado-Paciente. $paciente")
        "LEVE"->  println("Leve: Paciente: $paciente.Registrar en lista Normal")
        else -> println("Protocolo No reconocido")
      }
  fun main() {
  println( "WHEN con bloques de codigo")
  println("Nombre paciente")
  val paciente = readLine()?.trim()?:""
  println("Nivel de Alerta CRITICO/URGENTE/MODERADO/LEVE:")
  val nivel = readLine()?.trim()?.uppercase()?:""
  
  when(nivel) {
      "CRITICO" -> {
          println("ALERTA CRITICA -paciente. $paciente")
          println("Accion Inmediata")
          println("Registrar hora de accion de protocolo")
      }
      "URGENTE" -> {
          println("URGENTE -PACIENTE. $paciente")
          println("Priorizar Sala de espera")
          println("Reevaluar en 15 minutos")
      }
      "MODERADO"-> println("Moderado-Paciente. $paciente")
        "LEVE"->  println("Leve: Paciente: $paciente.Registrar en lista Normal")
        else -> println("Protocolo No reconocido")
      }
 fun main() {
  println( "WHEN con bloques de codigo")
  println("Nombre paciente")
  val paciente = readLine()?.trim()?:""
  println("Nivel de Alerta CRITICO/URGENTE/MODERADO/LEVE:")
  val nivel = readLine()?.trim()?.uppercase()?:""
  
  when(nivel) {
      "CRITICO" -> {
          println("ALERTA CRITICA -paciente. $paciente")
          println("Accion Inmediata")
          println("Registrar hora de accion de protocolo")
      }
      "URGENTE" -> {
          println("URGENTE -PACIENTE. $paciente")
          println("Priorizar Sala de espera")
          println("Reevaluar en 15 minutos")
      }
      "MODERADO"-> println("Moderado-Paciente. $paciente")
        "LEVE"->  println("Leve: Paciente: $paciente.Registrar en lista Normal")
        else -> println("Protocolo No reconocido")
      }
 println("Edad:")
 val edad = readLine()?.toIntOrNull()?:0
 val tarifa = when(edad){
     in 0..2 -> "Neonato"
     in 3..11 -> "Pediatrico"
     in 12..17 -> "Adolecente"
     in 18..64 -> "Adulto"
     else -> "Adulto mayor"
 }
} 
}
}