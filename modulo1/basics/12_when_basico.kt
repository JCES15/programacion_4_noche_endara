// Online Kotlin compiler to run Kotlin program online
// Print "Try programiz.pro" message

fun main() {
  println("Condicion WHEN")
  println("Codigo de Especialidad? (1-7)")
  println("1-> Medicina General")
  println(" 2-> Pediatria")
  println(" 3-> Cardiologia")
  println("4-> Ginecologia")
  println(" 5-> Pediatria")
  println(" 6-> Neurologia")
  println("7-> Dermatologia")
  val codigo = readLine()?.toIntOrNull()?:0
  
  val especialidad = when (codigo){
      1-> "Medicina General"
      2-> "Pediatria"
      3-> "Cardiologia"
      4-> "Ginecologia"
      5-> "Pediatria"
      6-> "Neurologia"
      7-> "Dermatologia"
      else -> "Especialidad No Registrada"
  }
println("Especialidad: $especialidad")
}