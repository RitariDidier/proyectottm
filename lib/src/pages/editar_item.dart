import 'package:flutter/material.dart';

class EditarItem extends StatefulWidget {
  @override
  _EditarItemState createState() => _EditarItemState();
}

class _EditarItemState extends State<EditarItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Pagina Matias'),
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
