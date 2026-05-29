import 'dart:io';

void main() {

  var hola = 0;

  while (true) {

    print('Ingrese los minutos de entrenamiento (0 para salir): ');
    int min = int.parse(stdin.readLineSync()!);

    if (min == 0) {
      break;
    }

    if (min < 30) {
      print("Entrenamiento Insuficiente");
    } 
    else if (min <= 90) {
      print("Entrenamiento Adecuado");
    } 
    else {
      print("Entrenamiento Intenso");
    }

    hola += min;
  }

  print('Total de minutos entrenados: $hola');
  print("GRACIAS, ADIOS");
}

///////////////////////////////////////////////////////////

import 'dart:io';

void main() {
 
 var uno =0;
 var dos =0;
 var entero = 0;
 
 while(true){
     print('Nombre del trabajador: ');
     String ? nombre = stdin.readLineSync();
     dos++;
     print('Ingresa la cantidad de muebles hechos (o cero para salir): ');
     int mueble = int.parse(stdin.readLineSync()!);
     
     if(mueble == 0)
     break;
     
     if(mueble < 3){
       
         print('Bajo');
     }
     if(mueble < 7){
         print('Normal');
     }
     if(mueble >= 7){
         print("Alta");
     }
       uno+=mueble;
       
 }
double prom = uno / dos;
 print('Total muebles: $uno');
  print('Total trabajadores: $dos');
  print('Promedio: $prom');
    
}


////////////////////////////////////////////////

import 'dart:io';

void main() {
  int tablas = 1;
  int totalTablas = 0;
  int cantidadOperarios = 0;

  while (tablas > 0) {
    print('Ingrese la cantidad de tablas cortadas (0 para salir):');

    tablas = int.parse(stdin.readLineSync()!);

    if (tablas > 0) {
      cantidadOperarios++;
      totalTablas += tablas;

      // Clasificación del trabajo
      if (tablas < 15) {
        print('Trabajo lento');
      } else if (tablas >= 15 && tablas <= 40) {
        print('Trabajo eficiente');
      } else {
        print('Trabajo sobresaliente');
      }

    }
  }

  // Mostrar resultados finales
  print('\nRESULTADOS FINALES');

  print('Total de tablas cortadas: $totalTablas');
  print('Cantidad de operarios registrados: $cantidadOperarios');

  if (cantidadOperarios > 0) {
    double promedio = totalTablas / cantidadOperarios;
    print('Promedio de tablas por operario: ${promedio.toStringAsFixed(2)}');
  } else {
    print('No se registraron operarios.');
  }
}

////////////////////////////////////////////////

import 'dart:io';

void main() {

  int vuelos = 1;
  int pasajeros;
  int minutosRetraso;

  int totalPasajeros = 0;
  int totalRetrasos = 0;
  int totalVuelos = 0;
  int cantidadAgentes = 0;

  while (vuelos > 0) {

    print('Ingrese la cantidad de vuelos atendidos (0 para terminar):');
    vuelos = int.parse(stdin.readLineSync()!);

    if (vuelos > 0) {

      print('Ingrese la cantidad de pasajeros procesados:');
      pasajeros = int.parse(stdin.readLineSync()!);

      print('Ingrese los minutos totales de retraso:');
      minutosRetraso = int.parse(stdin.readLineSync()!);

      // Acumuladores
      cantidadAgentes++;
      totalPasajeros += pasajeros;
      totalRetrasos += minutosRetraso;
      totalVuelos += vuelos;

      // Cálculos
      double pasajerosPorVuelo = pasajeros / vuelos;
      double retrasoPorVuelo = minutosRetraso / vuelos;

      print(
          '\nPasajeros por vuelo: ${pasajerosPorVuelo.toStringAsFixed(2)}');

      print(
          'Retraso promedio por vuelo: ${retrasoPorVuelo.toStringAsFixed(2)} minutos');

      // Clasificación
      if (pasajerosPorVuelo < 50) {
        print('Baja eficiencia');
      } else if (pasajerosPorVuelo >= 50 &&
          pasajerosPorVuelo <= 120) {
        print('Eficiencia normal');
      } else {
        print('Alta eficiencia');
      }

      print('----------------------------------');
    }
  }

  // Resultados finales
  print('\nRESULTADOS FINALES');

  print('Total de pasajeros procesados: $totalPasajeros');

  print('Total de minutos de retraso acumulados: $totalRetrasos');

  print('Cantidad de agentes registrados: $cantidadAgentes');

  if (cantidadAgentes > 0) {

    double promedioPasajeros =
        totalPasajeros / cantidadAgentes;

    print(
        'Promedio de pasajeros por agente: ${promedioPasajeros.toStringAsFixed(2)}');
  }

  if (totalVuelos > 0) {

    double promedioRetrasoGeneral =
        totalRetrasos / totalVuelos;

    print(
        'Promedio general de retraso por vuelo: ${promedioRetrasoGeneral.toStringAsFixed(2)} minutos');
  }
}

///////////////////////////////////////
///

import 'dart:io';

void main() {

  int cantidadVendedores;

  print('Ingrese la cantidad de vendedores:');
  cantidadVendedores = int.parse(stdin.readLineSync()!);

  // Ciclo para cada vendedor
  for (int vendedor = 1;
      vendedor <= cantidadVendedores;
      vendedor++) {

    int totalVentas = 0;

    print('\nVENDEDOR $vendedor');

    // Ciclo de los 7 días
    for (int dia = 1; dia <= 7; dia++) {

      print('Ingrese las ventas del día $dia:');

      int ventas = int.parse(stdin.readLineSync()!);

      totalVentas += ventas;
    }

    // Calcular promedio
    double promedio = totalVentas / 7;

    // Mostrar resultados
    print('\nRESULTADOS DEL VENDEDOR $vendedor');

    print('Total de ventas: $totalVentas');

    print(
        'Promedio diario de ventas: ${promedio.toStringAsFixed(2)}');

    // Clasificación
    if (promedio < 10) {
      print('Bajo rendimiento');
    } else if (promedio >= 10 && promedio <= 25) {
      print('Rendimiento normal');
    } else {
      print('Alto rendimiento');
    }
  }
}


///////////////////////////////////////

import 'dart:io';

void main() {

  double kilometros;
  double totalKilometros = 0;

  // Ciclo para 5 viajes
  for (int viaje = 1; viaje <= 5; viaje++) {

    print('Ingrese los kilómetros del viaje $viaje:');

    kilometros = double.parse(stdin.readLineSync()!);

    totalKilometros += kilometros;

    // Clasificación de ruta
    if (kilometros < 50) {
      print('Ruta corta');
    } else if (kilometros >= 50 && kilometros <= 150) {
      print('Ruta media');
    } else {
      print('Ruta larga');
    }

    print('--------------------------');
  }

  // Cálculos finales
  double combustible = totalKilometros / 12;
  double promedio = totalKilometros / 5;

  // Resultados
  print('\nRESULTADOS FINALES');

  print(
      'Total de kilómetros recorridos: ${totalKilometros.toStringAsFixed(2)} km');

  print(
      'Total de combustible estimado: ${combustible.toStringAsFixed(2)} litros');

  print(
      'Promedio de kilómetros por viaje: ${promedio.toStringAsFixed(2)} km');
}