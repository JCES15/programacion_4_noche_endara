// Online Kotlin compiler to run Kotlin program online
// Print "Try programiz.pro" message

fun main() {
 println("CICLOS REPEAT")
 println("Cuantas pulsaciones tomar para calcular la frecuancia")
 val mediciones = readLine()?.toIntOrNull()?:3
 var totalPulsaciones =0
 repeat(mediciones){i->
 println("Medicion ${i+1} (pulsos en 15 seg)")
 val pulsos = readLine()?.toIntOrNull()?:0
 totalPulsaciones+=pulsos*4 ///segundos
 }
 
 val promedio= totalPulsaciones / mediciones
 println("frecuencia cardiaca promedio: $promedio lpm")
 println("Clasificacion: ${
 when{
    promedio <60-> "Bradicardia"
    promedio <=100-> "Normal"
    else -> "Taquicardia"}
 }")
}
 