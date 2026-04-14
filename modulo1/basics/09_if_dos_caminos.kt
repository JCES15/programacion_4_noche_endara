fun main() {
  println("Control de Flujo")
println("If Dos Caminos")
println("Tiene Seguro medico? s/n")
val tieneSeguro = readLine()?.trim()?.lowercase()=="s"
println("Costo Base de la Consulta")
val costoBase= readLine()?.toDoubleOrNull()?:0.0
if(tieneSeguro){
    val cobertura = costoBase*0.8
    println("Seguro cubre $cobertura Cliente cubre ${costoBase-cobertura}")
}
else{
    println("Cliente cubre $costoBase")
}

}