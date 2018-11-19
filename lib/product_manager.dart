import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductManager();
  }
}

class _ProductManager extends State<ProductManager> {
  List<String> _products = ['Food Tester'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: RaisedButton(
            onPressed: () {
              setState(() {
                _products.add('Advanced food');
                print(_products);
              });
            },
            child: Text('Add product'),
          ),
          margin: EdgeInsets.all(10.0),
        ),
        Products(_products),
      ],
    );
  }
}
