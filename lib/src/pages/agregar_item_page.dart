import 'package:flutter/material.dart';

class AgregarItemPage extends StatefulWidget {
  @override
  _AgregarItemPageState createState() => _AgregarItemPageState();
}

class _AgregarItemPageState extends State<AgregarItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Pagina Miguel'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pushReplacementNamed(context, 'item');
          //Navigator.pop(context);
        },
      ),
    );
  }
}
