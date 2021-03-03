import 'package:flutter/material.dart';

class InventarioPage extends StatefulWidget {
  @override
  _InventarioPageState createState() => _InventarioPageState();
}

class _InventarioPageState extends State<InventarioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      //color: Color.fromRGBO(108, 192, 218, 1.0),
      padding: EdgeInsets.only(top: 20),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _agregarBoton(),
              _widgetBusqueda(),
              SizedBox(
                height: 10,
              ),
              _mostrarResultados(),
            ],
          ),
        ),
      ),
    ));
  }

  Widget _widgetBusqueda() {
    return Container(
      padding: EdgeInsets.only(top: 50, right: 25, left: 25),
      child: TextField(
        //autofocus: false,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            hintText: 'Producto',
            labelText: 'Producto',
            suffixIcon: Icon(Icons.search)),
      ),
    );
  }

  Widget _agregarBoton() {
    return Center(
      child: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, 'add');
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _mostrarResultados() {
    return Container(
      padding: EdgeInsets.only(bottom: 20, top: 7, left: 30),
      child: Column(children: <Widget>[
        Row(
          children: <Widget>[
            Text('Resultados',
                style: TextStyle(color: Colors.black, fontSize: 25)),
            SizedBox(
              width: 80,
            ),
            RaisedButton(
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Text(
                  'Stock',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              shape: StadiumBorder(),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(),
          child: Divider(
            color: Colors.red,
          ),
        ),
        _contenedorItems(),
      ]),
    );
  }

  Widget _items() {
    return Padding(
      padding: EdgeInsets.only(top: 15, bottom: 15),
      child: Column(
        children: <Widget>[
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Icon(
                Icons.food_bank,
                size: 45,
              ),
              Text(
                'Manzana',
                style: TextStyle(fontSize: 20),
              ),
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, 'edit');
                },
              ),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward_ios_outlined),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _contenedorItems() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            _items(),
            //Divider(),
            _items(),
            _items(),
            _items(),
            _items(),
            _items(),
            _items(),
            _items(),
            _items(),
            _items(),
            _items(),
            _items(),
            _items(),
          ],
        ),
      ),
    );
  }
}
