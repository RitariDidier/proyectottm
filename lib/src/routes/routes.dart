import 'package:flutter/material.dart';
import 'package:proyectottm/src/pages/Inventario_page.dart';
import 'package:proyectottm/src/pages/agregar_item_page.dart';
import 'package:proyectottm/src/pages/login_page.dart';
import 'package:proyectottm/src/pages/editar_item.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    'login': (BuildContext context) => LoginPage(),
    'item': (BuildContext context) => InventarioPage(),
    'edit': (BuildContext context) => EditarItem(),
    'add': (BuildContext context) => AgregarItemPage(),
  };
}
