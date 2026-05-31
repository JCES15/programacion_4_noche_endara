import 'dart:io';

void main() {
  // Datos ingresados como texto (String)
  print("Ingrese el nombre del empleado:");
  String nombre = stdin.readLineSync()!;

  print("Ingrese el salario base:");
  String salarioTexto = stdin.readLineSync()!;

  print("Ingrese horas extra trabajadas:");
  String horasTexto = stdin.readLineSync()!;

  // 🔄 Conversiones numéricas
  double salarioBase = double.parse(salarioTexto);
  int horasExtra = int.parse(horasTexto);

  // Cálculo del valor de hora extra
  double valorHoraExtra = salarioBase / 160; // 160 horas mensuales promedio
  double pagoExtra = valorHoraExtra * horasExtra;

  double salarioTotal = salarioBase + pagoExtra;

  // Conversión de número a String
  String resultado = """
Empleado: $nombre
Salario Base: ${salarioBase.toStringAsFixed(2)}
Horas Extra: $horasExtra
Pago Extra: ${pagoExtra.toStringAsFixed(2)}
Salario Total: ${salarioTotal.toStringAsFixed(2)}
""";

  print("\n--- RECIBO DE PAGO RRHH ---");
  print(resultado);
}