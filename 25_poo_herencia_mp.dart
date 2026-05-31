import 'dart:io';

// 🧑‍💼 Clase base (superclase)
class Empleado {
  String nombre;
  double salario;

  Empleado(this.nombre, this.salario);

  double calcularBono() {
    return salario * 0.10; // bono base
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

// 👨‍💼 Clase hija: Empleado Fijo
class EmpleadoFijo extends Empleado {
  EmpleadoFijo(String nombre, double salario) : super(nombre, salario);

  @override
  double calcularBono() {
    return salario * 0.15; // bono mayor
  }
}

// 👨‍💼 Clase hija: Empleado Temporal
class EmpleadoTemporal extends Empleado {
  EmpleadoTemporal(String nombre, double salario) : super(nombre, salario);

  @override
  double calcularBono() {
    return salario * 0.05; // bono menor
  }
}

void main() {
  print("--- SISTEMA RRHH ---");

  print("Ingrese el nombre del empleado:");
  String nombre = stdin.readLineSync()!;

  print("Ingrese el salario:");
  double salario = double.parse(stdin.readLineSync()!);

  print("Tipo de empleado (1 = Fijo, 2 = Temporal):");
  int tipo = int.parse(stdin.readLineSync()!);

  // 🧠 Uso de herencia (polimorfismo)
  Empleado empleado;

  if (tipo == 1) {
    empleado = EmpleadoFijo(nombre, salario);
  } else {
    empleado = EmpleadoTemporal(nombre, salario);
  }

  empleado.mostrarInfo();
}