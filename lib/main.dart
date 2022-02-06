import 'package:flutter/material.dart';

// Entrada principal de la aplicación
void main() {
  // Correr el App (Todo en Flutter es un Widget)
  runApp(MyApp());
}

// Los Widgets son clases que extienden de la clase padre Widget, que puede ser con estado o sin estado
class MyApp extends StatelessWidget {
  // Tdoo widget tiene el método build, el cual se debe sobreescribir
  @override
  Widget build(BuildContext context) {
    // Construir el cuerpo de nuestra aplicación
    return MaterialApp(
      home: Text('Hola mundo'),
    );
  }
}
