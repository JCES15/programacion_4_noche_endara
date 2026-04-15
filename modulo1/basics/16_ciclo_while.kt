// Online Kotlin compiler to run Kotlin program online
// Print "Try programiz.pro" message

// Online Kotlin compiler to run Kotlin program online
// Print "Try programiz.pro" message

fun main() {
  println( "CICLOS WHILE")
  var contador = 1
  while (contador<=5){
     println(contador)
     contador++
     }
 contador =6
 do{
     println(contador)
     contador++
 }
 while(contador<=5)
 
  println("brake - continue")
  contador = 1
  while (contador<=10){
      contador++
      if(contador==3) continue
      if(contador ==7) break
      println(contador)
  }
  var input: String
  while (true){
      println("escribe 'salir' para terminar:")
      input=readLine()?: ""
      if(input=="salir") break
      println("Ingresaste $input")
  }


   println( "CLAVE")
 
 
  var input: String
  while (true){
      println("INGRESA LA CLAVE ENTRAR")
      input=readLine()?: ""
     
      if(input=="1234") break
      println("CLAVE INCORRECTA")
       
  }
   println("ACCESO PERMITIDO")
}
 