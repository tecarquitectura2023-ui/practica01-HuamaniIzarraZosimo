
import 'dart:io';

class Vendedor {
  String nombre;
  double totalVentas;

  Vendedor(this.nombre, this.totalVentas);

  double calcularComision() {
    if (totalVentas >= 2000) {
      return totalVentas * 0.10;
    } else {
      return totalVentas * 0.05;
    }
  }

  void mostrarReporte() {
    print('\n--- REPORTE DEL VENDEDOR ---');
    print('Nombre: $nombre');
    print('Total de ventas: S/ ${totalVentas.toStringAsFixed(2)}');
    print('Comisión: S/ ${calcularComision().toStringAsFixed(2)}');
  }
}

void main() {
  stdout.write('Ingrese el nombre del vendedor: ');
  String nombre = stdin.readLineSync()!;

  stdout.write('Ingrese el total de ventas: S/ ');
  double ventas = double.parse(stdin.readLineSync()!);

  Vendedor vendedor = Vendedor(nombre, ventas);

  vendedor.mostrarReporte();
}
