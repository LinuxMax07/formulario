import 'package:flutter/material.dart';

class BotonesPage extends StatefulWidget {
  BotonesPage({Key key}) : super(key: key);

  @override
  _BotonesPageState createState() => _BotonesPageState();
}

class _BotonesPageState extends State<BotonesPage> {
  var componente = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tipo de botones-Jose Enrique Blas"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Container(
              width: 250.0,
              height: 100.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  style: BorderStyle.solid,
                ),
              ),
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  setState(() {});
                  componente = "Presionaste RaiseButton";
                },
                child: Text("RaiseButton"),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              width: 250.0,
              height: 100.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  style: BorderStyle.solid,
                ),
              ),
              child: FlatButton(
                onPressed: () {
                  setState(() {});
                  componente = "Presionaste FlatButton";
                },
                child: Text("FlatButton"),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              width: 250.0,
              height: 100.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  style: BorderStyle.solid,
                ),
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {});
                  componente = "Presionaste IconButton";
                },
                icon: Icon(Icons.delete),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              width: 250.0,
              height: 50.0,
              // decoration: BoxDecoration(
              //   border: Border.all(
              //     color: Colors.blue,
              //     style: BorderStyle.solid,
              //   ),
              // ),
              child: OutlineButton(
                textColor: Colors.blue,
                onPressed: () {
                  setState(() {});
                  componente = "Presionaste OutlineButton";
                },
                color: Colors.blue,
                child: Text("OutlineBotton"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                borderSide: BorderSide(color: Colors.blue),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              child: Text(componente),
            ),
          ],
        ),
      ),
    );
  }
}
