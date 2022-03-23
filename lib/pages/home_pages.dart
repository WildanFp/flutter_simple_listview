import 'package:flutter/material.dart';
import 'package:flutter_simple_listview/models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final List<Item> items = [
    Item(name: 'Jordan 1 SB high', price: 5000000, stock: 2, imageUrl: 'https://th.bing.com/th/id/OIP.2ScXIVebiRpvo65yc94oWQHaFM?w=273&h=192&c=7&r=0&o=5&pid=1.7'),
    Item(name: 'Jordan 1 SB low', price: 2000000, stock: 3, imageUrl: 'https://th.bing.com/th/id/OIP.jJ1yHtTX_q7WP8UUC1dgEAHaFj?w=261&h=185&c=7&r=0&o=5&pid=1.7'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping list'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(item.name),
                      ),
                      Expanded(
                        child: Text(item.price.toString(),
                            textAlign: TextAlign.end),
                      ),
                      Expanded(
                        child: Text(item.stock.toString(),
                            textAlign: TextAlign.end),
                      ),
                      Expanded(
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(item.imageUrl),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}