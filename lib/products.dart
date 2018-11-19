import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  // final means - created once, changed never
  final List<String> products;

  Products(this.products);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: products
          .map(
            (el) => Card(
                  child: Column(
                    children: [
                      Image.asset('assets/food.jpg'),
                      Text('Food Paradise')
                    ],
                  ),
                ),
          )
          .toList(),
    );
  }
}
