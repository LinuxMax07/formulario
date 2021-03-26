import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({Key key}) : super(key: key);

  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  var contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          tooltip: 'menu',
        ),
        title: Text("Imagenes"),
        centerTitle: true,
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_alert),
            tooltip: 'Alertas',
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.email),
            tooltip: 'Alertas',
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                child: Image.asset(
              'assets/images/imagen2.png',
              height: 200.0,
            )),
            Text("Has presionado este numero"),
            SizedBox(
              height: 20,
            ),
            Text('$contador'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
          contador++;
          print(contador);
        },
      ),
    );
  }
}
