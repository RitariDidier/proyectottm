import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // String _nombre = '';
    // String _email = '';

    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Container(
            color: Color.fromRGBO(108, 192, 218, 0.50),
            padding: EdgeInsets.only(top: 100),
            child: Column(
              children: <Widget>[
                _agregarText(),
                SizedBox(
                  height: 100,
                ),
                // _ingresarUsuario(),
                // SizedBox(
                //   height: 20,
                // ),
                _crearEmail(),
                SizedBox(
                  height: 10,
                ),
                _crearPassword(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _agregarText() {
    return Text(
      'Containers',
      style: TextStyle(color: Colors.black, fontSize: 50),
    );
  }

  // Widget _ingresarUsuario() {
  //   return Container(
  //     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
  //     child: TextField(
  //       //autofocus: false,
  //       textCapitalization: TextCapitalization.sentences,
  //       decoration: InputDecoration(
  //         border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
  //         counter: Text('}'),
  //         hintText: 'Usuario',
  //         labelText: 'Usuario',
  //         //helperText: 'Usuario para acceder',
  //       ),
  //     ),
  //   );
  // }

  Widget _crearEmail() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: TextField(
        autofocus: false,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: 'Email',
          labelText: 'Email',
          //helperText: 'Correo@gmail.com',
        ),
      ),
    );
  }

  Widget _crearPassword() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: TextField(
        autofocus: false,
        obscureText: true,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: 'Password',
          labelText: 'Password',
          //helperText: 'Correo@gmail.com',
          suffixIcon: Icon(Icons.lock_open),
        ),
        onChanged: (valor) {
          setState(() {
            //_password = valor;
          });
        },
      ),
    );
  }
}
