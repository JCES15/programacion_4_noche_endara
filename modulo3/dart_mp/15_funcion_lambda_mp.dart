import 'dart:io';

void main() {
  print("--- SISTEMA RRHH ---");

  print("Ingrese el salario del empleado:");
  double salario = double.parse(stdin.readLineSync()!);

  print("Ingrese horas extra trabajadas:");
  int horas = int.parse(stdin.readLineSync()!);

  // ⚡ Lambdas correctamente tipadas

  double Function(double) calcularIess = (double s) => s * 0.0945;

  double Function(double) calcularValorHora = (double s) => s / 160;

  double Function(int, double) calcularBono = (int h, double valorHora) => h * valorHora;

  double Function(double, double, double) calcularTotal =
      (double salario, double iess, double bono) => salario - iess + bono;

  // 🧠 Cálculos RRHH
  double iess = calcularIess(salario);
  double valorHora = calcularValorHora(salario);
  double bono = calcularBono(horas, valorHora);
  double total = calcularTotal(salario, iess, bono);

  // 📄 Resultado
  print("\n--- ROL DE PAGOS ---");
  print("Salario base: \$${salario.toStringAsFixed(2)}");
  print("Descuento IESS: \$${iess.toStringAsFixed(2)}");
  print("Bono horas extra: \$${bono.toStringAsFixed(2)}");
  print("Sueldo total: \$${total.toStringAsFixed(2)}");
}