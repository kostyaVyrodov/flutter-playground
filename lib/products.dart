import 'package:flutter/material.dart';

import 'pages/product.dart';

class Products extends StatelessWidget {
  // final means - created once, changed never
  final List<Map<String, String>> products;
  final Function deleteProduct;

  Products(this.products, {this.deleteProduct}) {
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
                Text(products[index]['title']),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      child: Text('Details'),
                      onPressed: () => Navigator.push<bool>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductPage(
                                  products[index]['imageUrl'],
                                  products[index]['title']),
                            ),
                          ).then((bool value) {
                            if (value) {
                              deleteProduct(index);
                            }
                          }),
                    )
                  ],
                )
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
