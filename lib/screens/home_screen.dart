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
    return const Scaffold(
        // backgroundColor: Colors.indigo,
        body: Center(child: Text('Hola mundo desde Flutter')));
  }
}
