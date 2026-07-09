import 'dart:io';

// 🧑‍💼 Clase Empleado
class Empleado {
  String nombre;
  String cargo;
  double salario;

  // 🏗️ Constructor
  Empleado(this.nombre, this.cargo, this.salario);

  // 💰 Método para calcular bono
  double calcularBono() {
    return salario * 0.10; // 10% de bono fijo
  }

  // 📊 Método para calcular sueldo total
  double salarioTotal() {
    return salario + calcularBono();
  }

  // 📄 Mostrar información del empleado
  void mostrarInfo() {
    print("\n--- EMPLEADO RRHH ---");
    print("Nombre: $nombre");
    print("Cargo: $cargo");
    print("Salario base: \$${salario.toStringAsFixed(2)}");
    print("Bono: \$${calcularBono().toStringAsFixed(2)}");
    print("Salario total: \$${salarioTotal().toStringAsFixed(2)}");
  }
}

void main() {
  print("--- SISTEMA RRHH ---");

  print("Ingrese el nombre del empleado:");
  String nombre = stdin.readLineSync()!;

  print("Ingrese el cargo:");
  String cargo = stdin.readLineSync()!;

  print("Ingrese el salario:");
  double salario = double.parse(stdin.readLineSync()!);

  // 🧠 Crear objeto
  Empleado emp = Empleado(nombre, cargo, salario);

  // 📄 Usar métodos de la clase
  emp.mostrarInfo();
}