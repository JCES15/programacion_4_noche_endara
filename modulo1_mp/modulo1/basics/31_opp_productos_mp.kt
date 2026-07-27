class Producto(
    val codigo: String,
    val nombre: String,
    var cantidad: Int
) {

    fun mostrarInformacion() {
        println("\n=== PRODUCTO ===")
        println("Código: $codigo")
        println("Nombre: $nombre")
        println("Cantidad: $cantidad")
    }

    fun entregar(cantidadEntregada: Int) {

        if (cantidadEntregada <= cantidad) {
            cantidad -= cantidadEntregada
            println("Se entregaron $cantidadEntregada unidades.")
        } else {
            println("No hay suficiente stock.")
        }
    }

    fun agregarStock(cantidadNueva: Int) {
        cantidad += cantidadNueva
        println("Stock actualizado.")
    }
}

fun main() {

    val producto = Producto(
        "EQ001",
        "Laptop Dell",
        10
    )

    producto.mostrarInformacion()

    producto.entregar(2)

    producto.mostrarInformacion()

    producto.agregarStock(5)

    producto.mostrarInformacion()
}