import 'package:flutter/material.dart';
import 'package:flutter_simple_listview/models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Item item = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping list'),
      ),
      body: Center(
        child: Text(item.name + ' with Rp' + item.price.toString() + ' and stock ' + item.stock.toString()),
      ),
    );
  }
}
