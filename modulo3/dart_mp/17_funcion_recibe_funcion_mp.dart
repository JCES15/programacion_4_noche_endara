import 'dart:io';

// 🔝 Función que recibe otra función como parámetro
double calcularNomina(
  double salario,
  double Function(double) reglaBono,
  double Function(double) descuento,
) {
  double bono = reglaBono(salario);
  double desc = descuento(salario);

  return salario + bono - desc;
}

void main() {
  print("--- SISTEMA RRHH ---");

  print("Ingrese el salario del empleado:");
  double salario = double.parse(stdin.readLineSync()!);

  print("Ingrese el desempeño (0-100):");
  int desempeno = int.parse(stdin.readLineSync()!);

  // ⚡ Funciones (reglas RRHH)

  double Function(double) bono = (s) {
    if (desempeno >= 90) return s * 0.20;
    if (desempeno >= 70) return s * 0.10;
    if (desempeno >= 50) return s * 0.05;
    return 0;
  };

  double Function(double) descuentoIess = (s) => s * 0.0945;

  // 🧠 Llamada a función que recibe funciones
  double total = calcularNomina(salario, bono, descuentoIess);

  print("\n--- ROL DE PAGOS RRHH ---");
  print("Salario base: \$${salario.toStringAsFixed(2)}");
  print("Salario final: \$${total.toStringAsFixed(2)}");
}