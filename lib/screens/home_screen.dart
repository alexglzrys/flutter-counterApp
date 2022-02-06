// Se recomienda que los Widgets vengan del paquete "material.dart", si usams cupertino, nuestros Widgets estarán muy puidos para iOS
import 'package:flutter/material.dart';

// Separar nuestros componentes en clases independientes
class HomeScreen extends StatelessWidget {
  // El key permite identificar un Widget especifico dentro del contexto de nuestra App
  // Se usa en determinadas ocasiones
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Retornar el Widget
    return const Center(child: Text('Hola mundo desde Flutter'));
  }
}
