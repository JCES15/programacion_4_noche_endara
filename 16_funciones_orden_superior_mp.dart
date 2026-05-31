import 'dart:io';

// 🔝 Función de orden superior: recibe otra función como parámetro
double calcularSalarioFinal(
    double salario,
    double Function(double) calculoIess,
    double Function(double) calculoBono,
) {
  double iess = calculoIess(salario);
  double bono = calculoBono(salario);

  return salario - iess + bono;
}

void main() {
  print("--- SISTEMA RRHH ---");

  print("Ingrese el salario del empleado:");
  double salario = double.parse(stdin.readLineSync()!);

  print("Ingrese desempeño (0 a 100):");
  int desempeno = int.parse(stdin.readLineSync()!);

  print("Ingrese horas extra:");
  int horas = int.parse(stdin.readLineSync()!);

  // ⚡ Funciones lambda que se enviarán como parámetros

  double Function(double) iess = (s) => s * 0.0945;

  // Bono depende del desempeño y salario
  double Function(double) bonoDesempeno = (s) {
    if (desempeno >= 90) return s * 0.20;
    if (desempeno >= 70) return s * 0.10;
    if (desempeno >= 50) return s * 0.05;
    return 0;
  };

  // Se usa función de orden superior
  double salarioFinal = calcularSalarioFinal(salario, iess, bonoDesempeno);

  print("\n--- RESULTADO RRHH ---");
  print("Salario base: \$${salario.toStringAsFixed(2)}");
  print("Salario final: \$${salarioFinal.toStringAsFixed(2)}");
}