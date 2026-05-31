void main() {
  // 🧑‍💼 Lista de empleados
  List<String> empleados = ["Carlos", "Ana", "Luis", "María"];

  // 💰 Salario base común
  double salarioBase = 500;

  print("--- REPORTE RRHH ---");

  // 🔁 Bucle for
  for (int i = 0; i < empleados.length; i++) {
    String nombre = empleados[i];

    // Simulación de bono según posición
    double bono = (i + 1) * 50; // cada empleado recibe diferente bono
    double salarioTotal = salarioBase + bono;

    print("\nEmpleado: $nombre");
    print("Salario base: $salarioBase");
    print("Bono: $bono");
    print("Salario total: $salarioTotal");
  }
}