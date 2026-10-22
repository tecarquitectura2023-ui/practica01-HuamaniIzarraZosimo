
import 'dart:io';

class Producto {
  String nombre;
  double precioUnitario;
  int cantidad;

  // Constructor
  Producto(this.nombre, this.precioUnitario, this.cantidad);

  // Calcula el valor total del inventario
  double calcularValorInventario() {
    return precioUnitario * cantidad;
  }

  // Determina el estado del stock
  String determinarEstadoStock() {
    if (cantidad == 0) {
      return 'Stock agotado';
    } else if (cantidad <= 5) {
      return 'Stock bajo';
    } else {
      return 'Stock suficiente';
    }
  }

  // Muestra la información del producto
  void mostrarInformacion() {
    print('\n--- INFORMACIÓN DEL PRODUCTO ---');
    print('Nombre: $nombre');
    print('Precio unitario: S/ ${precioUnitario.toStringAsFixed(2)}');
    print('Cantidad disponible: $cantidad');
    print(
      'Valor total del inventario: S/ '
      '${calcularValorInventario().toStringAsFixed(2)}',
    );
    print('Estado del stock: ${determinarEstadoStock()}');
  }
}

// Método principal
void main() {
  stdout.write('Ingrese el nombre del producto: ');
  String nombre = stdin.readLineSync()!;

  double precio;
  while (true) {
    stdout.write('Ingrese el precio unitario: S/ ');
    String? entrada = stdin.readLineSync();
    double? valor = double.tryParse(entrada ?? '');

    if (valor != null && valor > 0) {
      precio = valor;
      break;
    }

    print('El precio debe ser mayor que cero.');
  }

  int cantidad;
  while (true) {
    stdout.write('Ingrese la cantidad disponible: ');
    String? entrada = stdin.readLineSync();
    int? valor = int.tryParse(entrada ?? '');

    if (valor != null && valor >= 0) {
      cantidad = valor;
      break;
    }

    print('La cantidad debe ser un entero mayor o igual a cero.');
  }

  Producto producto = Producto(nombre, precio, cantidad);

  producto.mostrarInformacion();
}
