// Con tipo explícito — recomendado
String formatearPrecio(double precio) => '\$${precio.toStringAsFixed(2)}';

// Sin tipo — Dart infiere que retorna String
formatearPrecioSinTipo(double precio) => '\$${precio.toStringAsFixed(2)}';


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
  registroCliente(
    nombre: 'Ana',
    edad: 22,
  );


  print(formatearPrecio(1299.9));  // $1299.90

}