void saludar(){
  print('Holas a todos');
}

void saludosConParametros(String nombre) {
  print('Hola $nombre');
}

int obtenerNumero(){
    return 10;
}

int sumar(int a, int b) {
    return a+b;
}

////////////funcion flecha
int multiplicar(int a, int b)=>a*b;

///////////////////////funcion con parametros opcionales
void saludarOpcional(String nombre, [String apellido = 'Sin Apellido']){
    print("Hola $nombre $apellido");
}
void registroCliente({
    required String nombre,
    required int edad,
}){
    print("Hola $nombre edad: $edad");
}

void main(){
  saludar();
  saludosConParametros('Pedro Perez');
  int numero = obtenerNumero();
  print(numero);
  print('El numero es: ${obtenerNumero()}');
  print('la suma : ${sumar(5,5)}');
  print('la multiplicacion es : ${multiplicar(5,5)}');
  saludarOpcional('fran', 'Higuera');
  saludarOpcional('fran');
}
