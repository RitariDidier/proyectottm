import 'package:flutter/material.dart';

class AgregarItemPage extends StatefulWidget {
  @override
  _AgregarState createState() => _AgregarState();
}

class _AgregarState extends State<AgregarItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 20),
            color: Color.fromRGBO(108, 192, 218, 0.50),
            child: Column(
              children: <Widget>[
                _agregarText(),
                SizedBox(
                  height: 10,
                ),
                Divider(color: Colors.black),
                SizedBox(
                  height: 100,
                ),
                _crearTextField("Nombre", TextInputType.text),
                _crearTextField("Stock", TextInputType.number),
                _crearTextField("Categoria", TextInputType.text),
                SizedBox(
                  height: 10,
                ),
                _boton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _agregarText() {
    return Text(
      'Agregar Item',
      style: TextStyle(
        color: Colors.black,
        fontSize: 38,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _crearTextField(String nombre, keyboardType) {
    return Container(
      padding: EdgeInsets.only(
        left: 25,
        right: 25,
        bottom: 20,
      ),
      child: TextField(
        textAlign: TextAlign.center,
        autofocus: false,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          counterText: "",
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: nombre,
          //helperText: 'Correo@gmail.com',
        ),
      ),
    );
  }

  Widget _boton() {
    return RaisedButton(
      onPressed: () {},
      padding: const EdgeInsets.all(0.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color(0xFF0D47A1),
                Color(0xFF1976D2),
                Color(0xFF42A5F5),
              ],
            ),
            borderRadius: BorderRadius.all(Radius.circular(80.0))),
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: const Text('Agregar', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
