import 'package:app_1/routes/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App de Imagenes',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      initialRoute: '/',
      routes: obtenerRutas(),
      // home: HomePage(),
    );
  }
}

// import 'package:app_1/routes/routes.dart';
// import 'package:flutter/material.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Aplicacion de prueba",
//       theme: ThemeData(
//         primaryColor: Colors.blue[300],
//       ),
//       initialRoute: '/',
//       routes: obtenerRutas(),
//       //home: MyHomePage()
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   var contador = 0;
//   var componente = "";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {
//             setState(() {});
//             componente = "Menu";
//           },
//           icon: Icon(Icons.menu),
//           tooltip: 'menu',
//         ),
//         title: Text("Imagenes"),
//         centerTitle: true,
//         elevation: 10.0,
//         shape:
//             RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
//         actions: <Widget>[
//           IconButton(
//             onPressed: () {
//               setState(() {});
//               componente = "Alerta";
//             },
//             icon: Icon(Icons.add_alert),
//             tooltip: 'Alertas',
//           ),
//           IconButton(
//             onPressed: () {
//               setState(() {});
//               componente = "Mensaje";
//             },
//             icon: Icon(Icons.email),
//             tooltip: 'Mensaje',
//           )
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             Container(
//               child: Text(componente),
//             ),
//             Container(
//                 child: Image.asset(
//               'assets/images/imagen2.png',
//               height: 200.0,
//             )),
//             Text("Has presionado este numero"),
//             SizedBox(
//               height: 20,
//             ),
//             Text('$contador'),
//           ],
//         ),
//       ),
//       floatingActionButton: mostrarbotones(),
//     );
//   }

//   Widget mostrarbotones() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.end,
//       children: [
//         FloatingActionButton(
//           onPressed: () {
//             setState(() {});
//             contador--;
//             print(contador);
//           },
//           child: Icon(Icons.remove),
//         ),
//         SizedBox(
//           width: 10,
//         ),
//         FloatingActionButton(
//           onPressed: () {
//             setState(() {});
//             contador++;
//             print(contador);
//           },
//           child: Icon(Icons.plus_one),
//         ),
//         SizedBox(
//           width: 10,
//         ),
//         FloatingActionButton(
//           onPressed: () {
//             setState(() {});
//             contador = 0;
//             print(contador);
//           },
//           child: Icon(Icons.exposure_zero),
//         ),
//       ],
//     );
//   }
// }
