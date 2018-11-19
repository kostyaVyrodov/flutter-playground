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
