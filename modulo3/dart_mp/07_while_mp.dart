import 'dart:io';

void main() {
  int cuposDisponibles = 3; // límite de contrataciones
  int contador = 0;

  print("--- SISTEMA DE CONTRATACIÓN RRHH ---");

  while (contador < cuposDisponibles) {
    print("\nIngrese el nombre del nuevo empleado:");
    String nombre = stdin.readLineSync()!;

    print("Ingrese el cargo del empleado:");
    String cargo = stdin.readLineSync()!;

    print("Empleado registrado: $nombre - $cargo");

    contador++; // aumenta el número de empleados registrados
    print("Cupos restantes: ${cuposDisponibles - contador}");
  }

  print("\n⚠️ No hay más cupos disponibles para contratación.");
}