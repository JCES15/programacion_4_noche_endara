fun main() {
println("Inputs")
println("Escribe Nombre")
val nombre = readLine()
println("Hola $nombre")

println("Escribe tu Edad :")
val edadStr=readLine()
println("Tu edad es: $edadStr")
val edad= edadStr?.toDoubleOrNull()?:0.00
println("Su edad es: $edad")

val doble=edad*2
println()
println("El doble de la edad es: ${doble}")
println("El doble es: ${edad*2}")