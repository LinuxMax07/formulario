import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];
  _MenuProvider() {
    // cargarDatos();
  }

  Future<List<dynamic>> cargarDatos() async {
    final res = await rootBundle.loadString('assets/data/menu_opts.json');

    Map dataMap = json.decode(res);
    // print(dataMap['rutas']);
    opciones = dataMap['rutas'];
    return opciones;
  }
}

final menuProvider = new _MenuProvider();
