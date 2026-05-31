import 'dart:io';

// 🧮 Función para calcular bono según salario
double calcularBono(double salario, double porcentaje) {
  return salario * (porcentaje / 100);
}

// 📄 Función para mostrar el reporte del empleado
void mostrarEmpleado(String nombre, double salario, double bono) {
  double total = salario + bono;

  print("\n--- REPORTE RRHH ---");
  print("Empleado: $nombre");
  print("Salario base: \$${salario.toStringAsFixed(2)}");
  print("Bono: \$${bono.toStringAsFixed(2)}");
  print("Salario total: \$${total.toStringAsFixed(2)}");
}

void main() {
  print("--- SISTEMA RRHH ---");

  print("Ingrese el nombre del empleado:");
  String nombre = stdin.readLineSync()!;

  print("Ingrese el salario:");
  double salario = double.parse(stdin.readLineSync()!);

  print("Ingrese el porcentaje de bono:");
  double porcentaje = double.parse(stdin.readLineSync()!);

  // 🧠 Uso de funciones
  double bono = calcularBono(salario, porcentaje);
  mostrarEmpleado(nombre, salario, bono);
}