import 'dart:io';

// 🔝 Función que DEVUELVE otra función (bien tipada)
double Function(double) generarReglaBono(int desempeno) {
  if (desempeno >= 90) {
    return (double salario) => salario * 0.20;
  } else if (desempeno >= 70) {
    return (double salario) => salario * 0.10;
  } else if (desempeno >= 50) {
    return (double salario) => salario * 0.05;
  } else {
    return (double salario) => 0.0;
  }
}

void main() {
  print("--- SISTEMA RRHH ---");

  print("Ingrese el salario del empleado:");
  double salario = double.parse(stdin.readLineSync()!);

  print("Ingrese el desempeño (0-100):");
  int desempeno = int.parse(stdin.readLineSync()!);

  // 🧠 Función que retorna otra función
  double Function(double) reglaBono = generarReglaBono(desempeno);

  double bono = reglaBono(salario);

  double iess = salario * 0.0945;
  double salarioFinal = salario - iess + bono;

  print("\n--- ROL DE PAGOS RRHH ---");
  print("Salario base: \$${salario.toStringAsFixed(2)}");
  print("Bono: \$${bono.toStringAsFixed(2)}");
  print("Descuento IESS: \$${iess.toStringAsFixed(2)}");
  print("Salario final: \$${salarioFinal.toStringAsFixed(2)}");
}