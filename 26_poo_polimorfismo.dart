
class MetodoPago {
  void procesarPago(double monto) {
    print("Procesando pago...");
  }
}

class PagoEfectivo extends MetodoPago {
  @override
  void procesarPago(double monto) {
    print("Pago en efectivo: \$${monto}");
  }
}

class PagoTarjeta extends MetodoPago {
  @override
  void procesarPago(double monto) {
    print("Pago con tarjeta: \$${monto}");
  }
}

class PagoTransferencia extends MetodoPago {
  @override
  void procesarPago(double monto) {
    print("Transferencia bancaria: \$${monto}");
  }
}

void main() {

  List<MetodoPago> pagos = [
    PagoEfectivo(),
    PagoTarjeta(),
    PagoTransferencia()
  ];

  for (var pago in pagos) {
    pago.procesarPago(100);
  }
}