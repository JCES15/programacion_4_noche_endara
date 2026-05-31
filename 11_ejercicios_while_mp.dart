import 'dart:io';

void main() {
  print("--- SISTEMA RRHH: REGISTRO DE EMPLEADOS ---");

  bool continuar = true;
  int contador = 0;

  while (continuar) {
    contador++;

    print("\nEmpleado #$contador");

    print("Ingrese el nombre del empleado:");
    String nombre = stdin.readLineSync()!;

    print("Ingrese el cargo:");
    String cargo = stdin.readLineSync()!;

    print("Ingrese el salario:");
    double salario = double.parse(stdin.readLineSync()!);

    print("\n✅ Empleado registrado:");
    print("Nombre: $nombre");
    print("Cargo: $cargo");
    print("Salario: \$${salario.toStringAsFixed(2)}");

    print("\n¿Desea registrar otro empleado? (si/no):");
    String respuesta = stdin.readLineSync()!.toLowerCase();

    // 🔁 Control del while
    if (respuesta != "si") {
      continuar = false;
    }
  }

  print("\n⚠️ Registro finalizado. Total de empleados: $contador");
}