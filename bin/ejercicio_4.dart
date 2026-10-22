
import 'dart:io';

class RegistroTemperaturas {
  List<double> temperaturas = [];

  // Registra las temperaturas de cinco días
  void registrarTemperaturas() {
    for (int i = 0; i < 5; i++) {
      stdout.write('Ingrese la temperatura del día ${i + 1}: ');
      double temperatura = double.parse(stdin.readLineSync()!);
      temperaturas.add(temperatura);
    }
  }

  // Calcula el promedio de las temperaturas
  double calcularPromedio() {
    double suma = 0;

    for (int i = 0; i < temperaturas.length; i++) {
      suma += temperaturas[i];
    }

    return suma / temperaturas.length;
  }

  // Cuenta los días con temperatura mayor a 30 °C
  int contarDiasCalurosos() {
    int contador = 0;

    for (int i = 0; i < temperaturas.length; i++) {
      if (temperaturas[i] > 30) {
        contador++;
      }
    }

    return contador;
  }

  // Muestra el reporte semanal
  void mostrarReporte() {
    print('\n--- REPORTE DE TEMPERATURAS ---');
    print('Temperaturas: $temperaturas');
    print('Promedio semanal: ${calcularPromedio().toStringAsFixed(2)} °C');
    print('Días calurosos: ${contarDiasCalurosos()}');
  }
}

void main() {
  RegistroTemperaturas registro = RegistroTemperaturas();

  registro.registrarTemperaturas();
  registro.mostrarReporte();
}
