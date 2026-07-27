import 'dart:async';

void main() async {
  print("--- SISTEMA RRHH ---");

  print("Consultando datos del empleado...");

  // ⏳ Llamada a función async
  Map<String, dynamic> empleado = await obtenerEmpleado();

  print("\n--- DATOS DEL EMPLEADO ---");
  print("Nombre: ${empleado['nombre']}");
  print("Cargo: ${empleado['cargo']}");
  print("Salario: \$${empleado['salario']}");
}

// 🔄 Función async que simula una consulta a base de datos
Future<Map<String, dynamic>> obtenerEmpleado() async {
  // ⏳ Simula tiempo de respuesta (API o base de datos)
  await Future.delayed(Duration(seconds: 2));

  return {
    "nombre": "Carlos Pérez",
    "cargo": "Analista RRHH",
    "salario": 850.0
  };
}