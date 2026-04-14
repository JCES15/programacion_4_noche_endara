// Online Kotlin compiler to run Kotlin program online
// Print "Try programiz.pro" message

fun main() {
  println("If con condicion anidadas")
  println("el paciente tiene antecedentes cardiaco?")
  val tieneAntecedentes = readLine()?.trim()?.lowercase()=="s"
  println("Frecuencia cardaca lpm:")
  val frecuencia = readLine()?.toIntOrNull()?:0
  if (tieneAntecedentes) {
      println("Paciente con Antecedentes cardiacos")
      if ( frecuencia<50){
          println("Bradicardia")
      }else if(frecuencia > 100){
          println("Taquicardia")
      }else {
          println("Frecuancia dentro del Rango")
      }
 } else {
     println("Pacient sin antecedentes cardiacos")
     if(frecuencia<60 || frecuencia > 100 ){
         println("Frecuancia fuera de la nOrmal")
     }else{
         println("Frecuancia Cardiaca Normal")
     }
 }
}