import 'package:app_1/pages/Billetera_page.dart';
import 'package:app_1/pages/Podcast_page.dart';
import 'package:app_1/pages/datos_page.dart';
import 'package:app_1/pages/formulario_page.dart';
import 'package:app_1/pages/fotos_page.dart';
import 'package:app_1/pages/home_page.dart';
import 'package:app_1/pages/lugares_page.dart';
import 'package:app_1/pages/mapa.page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> obtenerRutas() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => FormPage(),
    'formulario_dos': (BuildContext context) => SecondFormPage(),
  };
}
