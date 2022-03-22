import 'package:flutter/material.dart';
import 'package:flutter_simple_listview/pages/home_pages.dart';
import 'package:flutter_simple_listview/pages/item_pages.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) => const ItemPage(),
    },
  ));
}

