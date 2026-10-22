
import 'dart:io';

class Estudiante {
  String nombre;
  double nota1;
  double nota2;
  double nota3;

  // Constructor
  Estudiante(this.nombre, this.nota1, this.nota2, this.nota3);

  // Calcula el promedio de las tres calificaciones
  double calcularPromedio() {
    return (nota1 + nota2 + nota3) / 3;
  }

  // Determina si el estudiante aprueba o desaprueba
  String determinarEstado() {
    if (calcularPromedio() >= 13) {
      return 'Aprobado';
    } else {
      return 'Desaprobado';
    }
  }

  // Muestra el reporte del estudiante
  void mostrarReporte() {
    print('\n--- REPORTE DEL ESTUDIANTE ---');
    print('Nombre: $nombre');
    print('Promedio: ${calcularPromedio().toStringAsFixed(2)}');
    print('Estado: ${determinarEstado()}');
  }
}

// Método principal
void main() {
  stdout.write('Ingrese el nombre del estudiante: ');
  String nombre = stdin.readLineSync()!;

  stdout.write('Ingrese la nota 1: ');
  double nota1 = double.parse(stdin.readLineSync()!);

  stdout.write('Ingrese la nota 2: ');
  double nota2 = double.parse(stdin.readLineSync()!);

  stdout.write('Ingrese la nota 3: ');
  double nota3 = double.parse(stdin.readLineSync()!);

  Estudiante estudiante = Estudiante(nombre, nota1, nota2, nota3);

  estudiante.mostrarReporte();
}
