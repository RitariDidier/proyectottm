import 'package:flutter/material.dart';
import 'package:proyectottm/src/pages/agregar_item.dart';
import 'package:proyectottm/src/pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Main',
      initialRoute: 'item',
      routes: {
        'login': (BuildContext context) => LoginPage(),
        'item': (BuildContext context) => AgregarItem(),
      },
    );
  }
}
