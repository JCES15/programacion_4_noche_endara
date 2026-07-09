import 'dart:io';

// 🧑‍💼 Clase Empleado con encapsulamiento
class Empleado {
  String nombre;

  // 🔒 Atributo privado (encapsulado)
  double _salario;

  Empleado(this.nombre, this._salario);

  // 📥 Getter (leer salario)
  double get salario => _salario;

  // 📤 Setter (modificar salario con validación)
  set salario(double nuevoSalario) {
    if (nuevoSalario > 0) {
      _salario = nuevoSalario;
    } else {
      print("❌ El salario no puede ser negativo o cero");
    }
  }

  // 💰 Método para calcular bono
  double calcularBono() {
    return _salario * 0.10;
  }

  // 📊 Total a pagar
  double salarioTotal() {
    return _salario + calcularBono();
  }

  // 📄 Mostrar información
  void mostrarInfo() {
    print("\n--- EMPLEADO RRHH ---");
    print("Nombre: $nombre");
    print("Salario base: \$${_salario.toStringAsFixed(2)}");
    print("Bono: \$${calcularBono().toStringAsFixed(2)}");
    print("Total: \$${salarioTotal().toStringAsFixed(2)}");
  }
}

void main() {
  print("--- SISTEMA RRHH ---");

  print("Ingrese el nombre del empleado:");
  String nombre = stdin.readLineSync()!;

  print("Ingrese el salario:");
  double salario = double.parse(stdin.readLineSync()!);

  // 🧠 Crear objeto
  Empleado emp = Empleado(nombre, salario);

  // 📄 Mostrar datos iniciales
  emp.mostrarInfo();

  // 🔄 Modificar salario usando setter
  print("\nIngrese nuevo salario:");
  double nuevoSalario = double.parse(stdin.readLineSync()!);

  emp.salario = nuevoSalario; // usa el setter

  print("\n📊 Datos actualizados:");
  emp.mostrarInfo();
}