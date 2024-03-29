// Se recomienda que los Widgets vengan del paquete "material.dart", si usams cupertino, nuestros Widgets estarán muy puidos para iOS
import 'package:flutter/material.dart';

// Window + . en el tipo de Widget para cambiar de estado a sin estado (nos mantiene toda al estructura escrita hasta el momento)
// Un StatefulWidget puede gestionar su estado, y redibujarse en caso de que algo cambie
class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final double _fontSize30 = 30.0;

  // Mi estado inicial del contador
  int counter = 0;

  // Funciones encargadas de gestionar el estado, las cuales serán pasadas como parámetro
  // al Widget encargado de dibujar los FloatingActionButton,
  // para que se pueda se pueda comunicar con el estado de este Widget
  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

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
          title: const Text('Counter Screen'),
          elevation: 10.0,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        // Boton flotante (pero en esa posición se puede colocar cualquier Widget)
        // Para este ejemplo tenemos 3 botones flotantes agrupados en una fila
        // Pasamos las funciones encargadas de gestionar el estado, para que en el componente externo se puedan invocar y el estado pueda cambiar. ya que el estado sólo esta presente dentro de este componente
        floatingActionButton: FloatingCustomActionButton(
            increaseFn: increase, decreaseFn: decrease, resetFn: reset),
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
              '$counter',
              style: TextStyle(
                  fontSize: _fontSize30,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber),
            )
          ],
        )));
  }
}

class FloatingCustomActionButton extends StatelessWidget {
  // Propiedades que guardan una referencia a las funciones que gestionan el estado del componente CounterScreen
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const FloatingCustomActionButton({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FloatingActionButton(
          // Invocar las funciones para decirles que modifiquen el estado
          onPressed: () => decreaseFn(),
          child: const Icon(Icons.exposure_minus_1),
        ),

        // ? Una técnica utilizada para separar Widgets es usar el Widget.
        /*const SizedBox(
          width: 30.0,
        ),*/

        FloatingActionButton(
          onPressed: () => resetFn(),
          child: const Icon(Icons.restore),
        ),
        FloatingActionButton(
          onPressed: () => increaseFn(),
          child: const Icon(Icons.plus_one),
        ),
      ],
    );
  }
}
