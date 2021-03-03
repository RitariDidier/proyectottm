import 'package:flutter/material.dart';

import 'package:proyectottm/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Main',
      initialRoute: 'login',
      routes: getAplicationRoutes(),
    );
  }
}
