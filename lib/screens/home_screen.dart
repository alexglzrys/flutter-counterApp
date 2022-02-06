// Se recomienda que los Widgets vengan del paquete "material.dart", si usams cupertino, nuestros Widgets estarán muy puidos para iOS
import 'package:flutter/material.dart';

// Separar nuestros componentes en clases independientes
class HomeScreen extends StatelessWidget {
  final double _fontSize30 = 30.0;

  // El key permite identificar un Widget especifico dentro del contexto de nuestra App
  // Se usa en determinadas ocasiones
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // BuildContext: hace referencia al árbol de Widgets que tiene mi App (tiene info del contexto donde se esta colocando el Widget actual)

    // Retornar el Widget
    // ? Si queremos envolver nuestro Widget dentro de otro, se recomienda en VS colocar el puntero sobre el Widget objetivo y presionar Window + .
    // La mayoría de los Widgets tienen un Child o un conjunto de Children, son pocos los que no
    // Scaffold me permite colocar un canvas para comenzar a organizar la estructura de mi App para colocar sus widgets generales
    return Scaffold(
        // backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: const Text('Home Screen'),
          elevation: 10.0,
        ),
        // Boton flotante (pero en esa posición se puede colocar cualquier Widget)
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Las funciones pueden o no modificar algo, por tanto, sus Widgets no pueden ser constantes
            print('Presionado');
          },
          child: const Icon(Icons.plus_one),
        ),
        body: Center(
            child: Column(
          // Alinear la columna al centro en su eje principal (eje Y) - Posicionar el puntero sobre la propiedad nos ayuda a saber que tipo de valor requiere
          // La alineación de las filas y coliumnas, es identico a FLEX de CSS
          // El eje transversal siempre tien el tamaña del widget con mayor tamaño. En este caso se recomienda que los widgets tengan un ancho de 100%
          mainAxisAlignment: MainAxisAlignment.center,

          // ! Si en algun momento tenemos problemas con CONST - Es importante leér el erro para retirarlo del elemento sugerido
          // ? Y o recomiendo que coloquemos const hasta el final de crear la estructura del Widget, de esta forma el IDE recomendará que elemento require CONST y que no
          children: [
            Text(
              'Número de taps',
              // Cambiar el estilo a este Widget de tipo Text
              style: TextStyle(
                  fontSize: _fontSize30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            Text(
              '0',
              style: TextStyle(
                  fontSize: _fontSize30,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber),
            )
          ],
        )));
  }
}
