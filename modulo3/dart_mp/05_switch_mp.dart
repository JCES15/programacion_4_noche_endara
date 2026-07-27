import 'dart:io';

void main() {
  print("Ingrese el nombre del empleado:");
  String nombre = stdin.readLineSync()!;

  print("Ingrese el tipo de contrato:");
  print("1. Indefinido");
  print("2. Temporal");
  print("3. Prácticas");
  print("4. Freelance");

  int tipo = int.parse(stdin.readLineSync()!);

  print("\n--- INFORME RRHH ---");
  print("Empleado: $nombre");

  // 🔁 Switch en RRHH
  switch (tipo) {
    case 1:
      print("Tipo de contrato: Indefinido");
      print("Beneficios: Seguro completo, vacaciones, bonos");
      break;

    case 2:
      print("Tipo de contrato: Temporal");
      print("Beneficios: Seguro parcial, sin bonos fijos");
      break;

    case 3:
      print("Tipo de contrato: Prácticas");
      print("Beneficios: Apoyo de transporte y alimentación");
      break;

    case 4:
      print("Tipo de contrato: Freelance");
      print("Beneficios: Pago por proyecto, sin beneficios sociales");
      break;

    default:
      print("Tipo de contrato no válido");
  }
}