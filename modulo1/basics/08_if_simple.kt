fun main() {
  println("Control de Flujo")
println("If simple")
println("Temperatura corporal del paciente grados cent.")
val temperatura = readLine()?.toDoubleOrNull()?:35.5
if(temperatura>=38){
    println("Fiebre Detectada")
}
if(temperatura>=40){
    println("Fiebre Alta")
}
println("Temperatura Registrada: $temperatura")

}