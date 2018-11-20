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

    // If you want to render nothing, return just Container()
    Widget productCard = Center(child: Text("No data"));

    if (products.length > 0) {
      productCard = ListView.builder(
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

    return productCard;
  }
}
