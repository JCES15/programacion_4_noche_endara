fun main() {
  println("if con multiples condiciones")
  val sistolica = readLine()?.toIntOrNull()?:0
  val clasificacion=if(sistolica <90){
    "Hipotension"
  } else if (sistolica<=119){
      "Normal"
  }else if (sistolica<=139){
      "Elevada"
  }else if (sistolica<=179){
      "Hipertension Grado 2"
  }else { "Crisis Hipertensiva"
      
  }
  println("Clasificacion: $clasificacion")
}