import 'package:flutter/material.dart';
import 'formulario_page.dart';

class SecondFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Argumentos parametros = ModalRoute.of(context).settings.arguments;
    return Container(
      child: Scaffold(
          appBar: AppBar(title: Text('Pagina Login')),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Bienvenido ${parametros.nombre} !',
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
              ),
              Center(
                child: Text(
                  'Estos son tus datos de registro',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Center(
                child: Text(
                  'Correo electronico',
                  style: TextStyle(fontSize: 20, color: Colors.deepOrange),
                ),
              ),
              Center(
                child: Text(
                  '${parametros.email}',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              Center(
                child: Text(
                  'Direccion',
                  style: TextStyle(fontSize: 20, color: Colors.deepOrange),
                ),
              ),
              Center(
                child: Text(
                  '${parametros.direccion}',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              Center(
                child: Text(
                  'Password',
                  style: TextStyle(fontSize: 20, color: Colors.deepOrange),
                ),
              ),
              Center(
                child: Text(
                  '${parametros.password}',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ],
          )),
    );
  }
}
