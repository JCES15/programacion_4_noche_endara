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

