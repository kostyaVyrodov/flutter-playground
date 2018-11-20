import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  // final means - created once, changed never
  final List<String> products;

  Products(this.products) {
    print('[Products Widget] Contructor');
  }

  @override
  Widget build(BuildContext context) {
    print('[Products Widget] build()');
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Column(
            children: [
              Image.asset('assets/food.jpg'),
              Text(products[index]),
            ],
          ),
        );
      },
      itemCount: products.length,
    );
  }
}
