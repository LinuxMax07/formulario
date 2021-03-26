import 'package:app_1/pages/botones_page.dart';
import 'package:app_1/pages/home_page.dart';
import 'package:app_1/pages/formulario_page.dart';
import 'package:flutter/material.dart';

class listview extends StatefulWidget {
  listview({Key key}) : super(key: key);

  @override
  _listviewState createState() => _listviewState();
}

class _listviewState extends State<listview> {
  List nombres = ["Pedro", "Juan", "Gonzalez", "Maria", "Regina"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "app de listas",
      theme: ThemeData(primaryColor: Colors.blue),
      home: FormPage(),
    );
  }
}
