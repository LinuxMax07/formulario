import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  FocusNode nombreFocus;
  FocusNode direccionFocus;
  FocusNode emailFocus;
  FocusNode passwordFocus;

  String nombre;
  String direccion;
  String email;
  String password;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Jose Enrique Blas Esteban'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 150.0,
                      height: 150.0,
                      child: Center(
                        child:
                            Image.network('https://i.ibb.co/T0DtCFP/Logo.png'),
                      ),
                    ),
                    Text(
                      "Bienvenido a Alvali",
                      style: TextStyle(fontSize: 30, color: Colors.blue),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Registrate!",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: 'Nombre completo',
                          hintText: 'Ingresa tu nombre',
                          prefixIcon: Icon(
                            Icons.account_circle,
                            size: 45,
                          )),
                      onSaved: (value) {
                        nombre = value;
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Este campo no puede estar vacio';
                        }
                      },
                      focusNode: this.nombreFocus,
                      onEditingComplete: () =>
                          requestFocus(context, emailFocus),
                      textInputAction: TextInputAction.next,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: 'Correo',
                          hintText: 'Ingresa tu correo electronico',
                          prefixIcon: Icon(
                            Icons.mark_email_read,
                            size: 45,
                          )),
                      onSaved: (value) {
                        email = value;
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Este campo no puede estar vacio';
                        }
                      },
                      focusNode: this.emailFocus,
                      onEditingComplete: () =>
                          requestFocus(context, emailFocus),
                      textInputAction: TextInputAction.next,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: 'Direccion',
                          hintText: 'Ingresa tu direccion',
                          prefixIcon: Icon(
                            Icons.location_on,
                            size: 45,
                          )),
                      onSaved: (value) {
                        direccion = value;
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Este campo no puede estar vacio';
                        }
                      },
                      focusNode: this.direccionFocus,
                      onEditingComplete: () =>
                          requestFocus(context, emailFocus),
                      textInputAction: TextInputAction.next,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Ingresa una contraseña',
                            prefixIcon: Icon(
                              Icons.lock_open_outlined,
                              size: 45,
                            )),
                        onSaved: (value) {
                          password = value;
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Este campo no puede estar vacios';
                          }
                        }),
                    SizedBox(
                      height: 25.0,
                    ),
                    Container(
                      width: 150,
                      height: 50,
                      child: RaisedButton(
                        color: Colors.red,
                        textColor: Colors.white,
                        onPressed: () {
                          if (formKey.currentState.validate()) {
                            formKey.currentState.save();

                            Navigator.pushNamed(context, 'formulario_dos',
                                arguments: Argumentos(
                                    nombre: this.nombre,
                                    direccion: this.direccion,
                                    email: this.email,
                                    password: this.password));
                          }
                        },
                        child: Text('Registrate'),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void requestFocus(BuildContext context, FocusNode focusNode) {
    FocusScope.of(context).requestFocus();
  }

  @override
  void initState() {
    super.initState();

    nombreFocus = FocusNode();
    direccionFocus = FocusNode();
    emailFocus = FocusNode();
    passwordFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    nombreFocus.dispose();
    direccionFocus.dispose();
    emailFocus.dispose();
    passwordFocus.dispose();
  }
}

class Argumentos {
  String nombre;
  String direccion;
  String email;
  String password;

  Argumentos({this.nombre, this.direccion, this.email, this.password});
}
