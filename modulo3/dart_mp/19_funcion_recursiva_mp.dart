void main() {
  // 🧑‍💼 Lista de salarios de empleados
  List<double> salarios = [500, 650, 800, 1200, 950];

  double total = sumarSalarios(salarios, salarios.length);

  print("--- SISTEMA RRHH ---");
  print("Total de salarios a pagar: \$${total.toStringAsFixed(2)}");
}

// 🔁 Función recursiva
double sumarSalarios(List<double> salarios, int n) {
  // 🧠 Caso base
  if (n == 0) {
    return 0;
  }

  // 🔄 Llamada recursiva
  return salarios[n - 1] + sumarSalarios(salarios, n - 1);
}