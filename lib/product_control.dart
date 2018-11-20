import 'package:flutter/material.dart';

class ProductControll extends StatelessWidget {
  // A type for stroing a function (similar to delegate)
  final Function addProduct;

  ProductControll(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        addProduct('Sweets');
      },
      child: Text('Add product'),
    );
  }
}
