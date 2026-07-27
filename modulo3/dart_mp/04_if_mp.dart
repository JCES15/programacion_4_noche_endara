import 'dart:io';

void main() {
  print("Ingrese el nombre del empleado:");
  String nombre = stdin.readLineSync()!;

  print("Ingrese el salario del empleado:");
  double salario = double.parse(stdin.readLineSync()!);

  print("Ingrese la calificación de desempeño (0 a 100):");
  int calificacion = int.parse(stdin.readLineSync()!);

  double bono = 0;

  // 🧠 Estructura IF en RRHH
  if (calificacion >= 90) {
    bono = salario * 0.20; // 20% de bono
    print("Excelente desempeño");
  } else if (calificacion >= 70) {
    bono = salario * 0.10; // 10% de bono
    print("Buen desempeño");
  } else if (calificacion >= 50) {
    bono = salario * 0.05; // 5% de bono
    print("Desempeño regular");
  } else {
    bono = 0;
    print("Debe mejorar su desempeño");
  }

  double salarioTotal = salario + bono;

  print("\n--- RESULTADO RRHH ---");
  print("Empleado: $nombre");
  print("Salario base: $salario");
  print("Bono: $bono");
  print("Salario total: $salarioTotal");
}