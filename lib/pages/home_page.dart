import 'package:app_1/pages/mapa.page.dart';
import 'package:app_1/prowviders/menu_provider.dart';
import 'package:app_1/utils/icono_string_utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prueba de ListView"),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    // menuProvider.cargarDatos().then((opciones) {
    //   print('lista de opciones');
    //   print(opciones);
    // });
    return FutureBuilder(
      future: menuProvider.cargarDatos(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        // print('Builer');
        // print(snapshot.data[0]);
        return ListView(
          children: _listaItems(context, snapshot.data),
        );
      },
    );
  }

  List<Widget> _listaItems(BuildContext context, List<dynamic> data) {
    final List<Widget> opciones = [];
    data.forEach((opt) {
      final widgetTemp = ListTile(
        leading: obtenerIcon(opt['icon']),
        title: Text(opt['texto']),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          size: 35,
        ),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
          // final route = MaterialPageRoute(builder: (context) {
          //   return MapaPage();
          // });
          // Navigator.push(context, route);
        },
      );
      opciones.add(widgetTemp);
      opciones.add(Divider());
    });

    return opciones;
    /* return [
      ListTile(
        leading: Icon(
          Icons.map,
          size: 35,
        ),
        title: Text(
          "Lugares favoritos",
          style: TextStyle(fontSize: 20),
        ),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          size: 35,
        ),
      ),
      Divider(),
      ListTile(
        leading: Icon(
          Icons.account_balance_wallet,
          size: 35,
        ),
        title: Text(
          "Billetera",
          style: TextStyle(fontSize: 20),
        ),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          size: 35,
        ),
      ),
      Divider(),
      ListTile(
        leading: Icon(
          Icons.photo_album,
          size: 35,
        ),
        title: Text(
          "Galeria de fotos",
          style: TextStyle(fontSize: 20),
        ),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          size: 35,
        ),
      ),
      Divider(),
      ListTile(
        leading: Icon(
          Icons.audiotrack,
          size: 35,
        ),
        title: Text(
          "Podcast",
          style: TextStyle(fontSize: 20),
        ),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          size: 35,
        ),
      ),
      Divider(),
      ListTile(
        leading: Icon(
          Icons.add_location,
          size: 35,
        ),
        title: Text(
          "Lugares por visitar",
          style: TextStyle(fontSize: 20),
        ),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          size: 35,
        ),
      ),
      Divider(),
    ];*/
  }
}
