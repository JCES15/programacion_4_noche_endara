fun main() {
saludar()
saludarConParametros("Michael")
val  num1=10
val num2=20
println("Suma de $num1 + $num2 = ${sumar(num1, num2)}")
println("Multiplicar $num1 * $num2 = ${multiplicar(num1, num2)}")
}

fun saludar(){
    println("Hello world desde funtions")
    
}
fun saludarConParametros(nombre: String){
    println("Buenas Noches : $nombre")
}
fun sumar(num1: Int, num2: Int): Int{
    return num1+num2
}

////funcion simplificada
fun restar(num1: Int, num2: Int)= num1 - num2

////funcion dentro de funcion
fun operacion(){
    fun cuadrado(x: Int)= x*x
    println(cuadrado(5))
}
 
 ////funciones con variables
 val multiplicar= {a:Int, b: Int-> a*b}
 