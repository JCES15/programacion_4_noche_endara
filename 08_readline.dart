import 'dart:io';

void mail(){
  print('Ingrese su nombre:');
  String? nombre = stdin.readLineSync();
  print('Hola $nombre');

  print('Ingrese un numero:');
  int numero = int.parse(stdin.readLineSync()!);
  print('Numero: $numero');


  print('Ingrese un Decimal');
  double valor = double.parse(stdin.readLineSync()!);
  print('valor: $valor');

  //////////////////////////////
  print('Ingrese un numero:');
  int numero = int.parse(stdin.readLineSync()!);
  print('Numero: $numero');
  for ( int i = 1 ; ,= 10; i++){
    int mul = numero * i
  }
}