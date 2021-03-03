import 'package:flutter/material.dart';

class EditarItem extends StatefulWidget {
  @override
  _EditarItemState createState() => _EditarItemState();
}

class _EditarItemState extends State<EditarItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          stops: [0, 0.25, 0.5, 0.75, 1],
          colors: [
            Color(0xFF95afc0),
            Color(0xFFc7ecee),
            Color(0xFF95afc0),
            Color(0xFFc7ecee),
            Color(0xFF95afc0),
          ],
        ),
      ),
      padding: EdgeInsets.only(top: 20),
      child: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            _agregarHeader(),
            SizedBox(
              height: 10,
            ),
            Divider(color: Colors.black),
            _disabledInputItemData("Código"),
            _inputItemData("Título", TextInputType.text),
            _inputItemData("Stock", TextInputType.number),
            _inputItemData("Categoría", TextInputType.text),
            SizedBox(
              height: 50,
            ),
            _botonEditar(),
          ],
        ),
      ),
    ));
  }

  Widget _agregarHeader() {
    return Text(
      'Editar item',
      style: TextStyle(color: Colors.black, fontSize: 38),
    );
  }

  Widget _inputItemData(String field, keyboardType) {
    return Container(
      padding: EdgeInsets.only(top: 30, right: 25, left: 25),
      child: TextField(
        textAlign: TextAlign.center,
        //autofocus: false,
        textCapitalization: TextCapitalization.sentences,
        keyboardType: keyboardType,
        decoration: InputDecoration(
            fillColor: Color(0xFFf5f6fa),
            filled: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            hintText: field),
        //suffixIcon: Icon(Icons.search)),
      ),
    );
  }

  Widget _disabledInputItemData(String field) {
    return Container(
      padding: EdgeInsets.only(top: 50, right: 25, left: 25),
      child: TextField(
        textAlign: TextAlign.center,
        enabled: false,
        //autofocus: false,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
            fillColor: Color(0xFFf5f6fa),
            filled: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            hintText: field),
        //suffixIcon: Icon(Icons.search)),
      ),
    );
  }

  Widget _botonEditar() {
    return RaisedButton(
      onPressed: () {},
      padding: const EdgeInsets.all(0.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color(0xFF6a89cc),
                Color(0xFF4a69bd),
              ],
            ),
            borderRadius: BorderRadius.all(Radius.circular(80.0))),
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: const Text('Editar item', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
