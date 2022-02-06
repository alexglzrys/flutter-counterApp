// Se recomienda que los Widgets vengan del paquete "material.dart", si usams cupertino, nuestros Widgets estarán muy puidos para iOS
import 'package:flutter/material.dart';

// Separar nuestros componentes en clases independientes
class HomeScreen extends StatelessWidget {
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
        body: Center(
            child: Column(
          // Alinear la columna al centro en su eje principal (eje Y) - Posicionar el puntero sobre la propiedad nos ayuda a saber que tipo de valor requiere
          // La alineación de las filas y coliumnas, es identico a FLEX de CSS
          // El eje transversal siempre tien el tamaña del widget con mayor tamaño. En este caso se recomienda que los widgets tengan un ancho de 100%
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Text('Número de taps'), Text('0')],
        )));
  }
}
