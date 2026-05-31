import 'dart:io';

void main() {
  print("--- SISTEMA RRHH: REGISTRO DE EMPLEADO ---");

  // 🧑‍💼 Entrada de datos usando readLineSync
  print("Ingrese el nombre del empleado:");
  String nombre = stdin.readLineSync()!;

  print("Ingrese el cargo del empleado:");
  String cargo = stdin.readLineSync()!;

  print("Ingrese el departamento:");
  String departamento = stdin.readLineSync()!;

  print("Ingrese el salario:");
  double salario = double.parse(stdin.readLineSync()!);

  // 📄 Salida de datos
  print("\n--- DATOS DEL EMPLEADO ---");
  print("Nombre: $nombre");
  print("Cargo: $cargo");
  print("Departamento: $departamento");
  print("Salario: \$${salario.toStringAsFixed(2)}");
}