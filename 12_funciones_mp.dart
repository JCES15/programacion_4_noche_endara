import 'dart:io';

// 💰 Función para calcular descuento del IESS (ejemplo 9.45%)
double calcularIess(double salario) {
  return salario * 0.0945;
}

// 💰 Función para calcular bono según horas extra
double calcularHorasExtra(int horas, double valorHora) {
  return horas * valorHora;
}

// 📊 Función para calcular sueldo neto
double calcularSueldoNeto(double salario, double iess, double bono) {
  return salario - iess + bono;
}

// 📄 Función para mostrar el rol de pagos
void mostrarRol(String nombre, double salario, double iess, double bono, double neto) {
  print("\n--- ROL DE PAGOS RRHH ---");
  print("Empleado: $nombre");
  print("Salario base: \$${salario.toStringAsFixed(2)}");
  print("Descuento IESS: \$${iess.toStringAsFixed(2)}");
  print("Bono horas extra: \$${bono.toStringAsFixed(2)}");
  print("Sueldo neto: \$${neto.toStringAsFixed(2)}");
}

void main() {
  print("--- SISTEMA RRHH ---");

  print("Ingrese el nombre del empleado:");
  String nombre = stdin.readLineSync()!;

  print("Ingrese el salario base:");
  double salario = double.parse(stdin.readLineSync()!);

  print("Ingrese horas extra trabajadas:");
  int horas = int.parse(stdin.readLineSync()!);

  print("Ingrese valor por hora extra:");
  double valorHora = double.parse(stdin.readLineSync()!);

  // 🧠 Uso de funciones
  double iess = calcularIess(salario);
  double bono = calcularHorasExtra(horas, valorHora);
  double neto = calcularSueldoNeto(salario, iess, bono);

  mostrarRol(nombre, salario, iess, bono, neto);
}