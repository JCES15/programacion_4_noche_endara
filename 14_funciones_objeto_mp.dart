import 'dart:io';

void main() {
  print("--- SISTEMA RRHH ---");

  print("Ingrese el salario del empleado:");
  double salario = double.parse(stdin.readLineSync()!);

  print("Ingrese horas extra:");
  int horas = int.parse(stdin.readLineSync()!);

  // 🧠 Funciones como objetos (variables)
  double Function(double) calcularIess = (s) => s * 0.0945;

  double Function(int, double) calcularHorasExtra = (h, valorHora) {
    return h * valorHora;
  };

  double Function(double, double, double) calcularTotal =
      (salario, iess, bono) => salario - iess + bono;

  // 📊 Lógica RRHH
  double iess = calcularIess(salario);
  double valorHora = salario / 160;
  double bono = calcularHorasExtra(horas, valorHora);
  double total = calcularTotal(salario, iess, bono);

  // 📄 Resultado
  print("\n--- ROL DE PAGOS ---");
  print("Salario base: \$${salario.toStringAsFixed(2)}");
  print("Descuento IESS: \$${iess.toStringAsFixed(2)}");
  print("Bono horas extra: \$${bono.toStringAsFixed(2)}");
  print("Sueldo total: \$${total.toStringAsFixed(2)}");
}