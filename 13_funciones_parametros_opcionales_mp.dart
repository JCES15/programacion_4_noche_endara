import 'dart:io';

// 📄 Función con parámetros opcionales nombrados
void generarReporteEmpleado({
  required String nombre,
  double salario = 0,
  String? cargo,
  int? horasExtra,
}) {
  double valorHoraExtra = salario / 160;
  double bono = (horasExtra ?? 0) * valorHoraExtra;
  double total = salario + bono;

  print("\n--- REPORTE RRHH ---");
  print("Empleado: $nombre");
  print("Cargo: ${cargo ?? 'No especificado'}");
  print("Salario base: \$${salario.toStringAsFixed(2)}");
  print("Horas extra: ${horasExtra ?? 0}");
  print("Bono: \$${bono.toStringAsFixed(2)}");
  print("Total a pagar: \$${total.toStringAsFixed(2)}");
}

void main() {
  print("--- SISTEMA RRHH ---");

  print("Ingrese el nombre del empleado:");
  String nombre = stdin.readLineSync()!;

  print("Ingrese el salario:");
  double salario = double.parse(stdin.readLineSync()!);

  // 🧠 Llamada con parámetros opcionales
  generarReporteEmpleado(
    nombre: nombre,
    salario: salario,
    cargo: "Analista RRHH",
    horasExtra: 5,
  );

  // También puedes llamar sin algunos datos:
  generarReporteEmpleado(
    nombre: "Laura",
    salario: 500,
  );
}