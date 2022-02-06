import 'package:counter_app/screens/counter_screen.dart';
// import 'package:counter_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

// Entrada principal de la aplicación
void main() {
  // Correr el App (Todo en Flutter es un Widget)
  // Si el editor nos aconseja trabajar con constructores constantes al momento de instanciar, debemos hacerlo. Esto ayuda al rendimiento de nuestra app
  runApp(const MyApp());
}

// Los Widgets son clases que extienden de la clase padre Widget, que puede ser con estado o sin estado
class MyApp extends StatelessWidget {
  // Se recomienda seguir las ayudas del IDE para agregar elementos que considera importantes en la construcción de nuestra clase
  const MyApp({Key? key}) : super(key: key);

  // Tdoo widget tiene el método build, el cual se debe sobreescribir
  @override
  Widget build(BuildContext context) {
    // Construir el cuerpo de nuestra aplicación
    // MaterialApp es el punto de entrada de nuestra App
    // Se recomienda instanciar nuestras clases padre como constantes si sus hijos nunca van a cambiar, para ello no podemos valer de las ayudas del IDE
    return const MaterialApp(
        // Retirar el tag de debug en la vista de nuestra app
        debugShowCheckedModeBanner: false,
        home: CounterScreen());
  }
}
