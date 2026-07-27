import 'dart:io';

// 🧑‍💼 Clase base
class Empleado {
  String nombre;
  double salario;

  Empleado(this.nombre, this.salario);

  // 🔁 Método que será sobrescrito
  double calcularBono() {
    return salario * 0.10;
  }

  double salarioTotal() {
    return salario + calcularBono();
  }

  void mostrarInfo() {
    print("\n--- EMPLEADO RRHH ---");
    print("Nombre: $nombre");
    print("Salario base: \$${salario.toStringAsFixed(2)}");
    print("Bono: \$${calcularBono().toStringAsFixed(2)}");
    print("Total: \$${salarioTotal().toStringAsFixed(2)}");
  }
}

// 👨‍💼 Empleado fijo
class EmpleadoFijo extends Empleado {
  EmpleadoFijo(String nombre, double salario) : super(nombre, salario);

  @override
  double calcularBono() {
    return salario * 0.20;
  }
}

// 👨‍💼 Empleado temporal
class EmpleadoTemporal extends Empleado {
  EmpleadoTemporal(String nombre, double salario) : super(nombre, salario);

  @override
  double calcularBono() {
    return salario * 0.05;
  }
}

// 👨‍💼 Freelance
class EmpleadoFreelance extends Empleado {
  EmpleadoFreelance(String nombre, double salario) : super(nombre, salario);

  @override
  double calcularBono() {
    return salario * 0.02;
  }
}

void main() {
  print("--- SISTEMA RRHH ---");

  List<Empleado> empleados = [
    EmpleadoFijo("Carlos", 1000),
    EmpleadoTemporal("Ana", 800),
    EmpleadoFreelance("Luis", 1200),
  ];

  // 🔁 Polimorfismo en acción
  for (var emp in empleados) {
    emp.mostrarInfo(); // cada uno responde diferente a calcularBono()
  }
}