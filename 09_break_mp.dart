void main() {
  // 🧑‍💼 Lista de empleados
  List<String> empleados = [
    "Carlos",
    "Ana",
    "Luis",
    "María",
    "Pedro"
  ];

  String buscar = "Luis";
  bool encontrado = false;

  print("--- SISTEMA RRHH: BÚSQUEDA DE EMPLEADOS ---");

  // 🔍 Bucle for con break
  for (int i = 0; i < empleados.length; i++) {
    print("Revisando: ${empleados[i]}");

    if (empleados[i] == buscar) {
      print("✅ Empleado encontrado: $buscar");
      encontrado = true;
      break; // ⛔ Detiene el bucle cuando lo encuentra
    }
  }

  if (!encontrado) {
    print("❌ Empleado no encontrado");
  }
}