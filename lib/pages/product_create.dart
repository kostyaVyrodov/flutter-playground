import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  final Function addProduct;

  ProductCreatePage(this.addProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePage();
  }
}

class _ProductCreatePage extends State<ProductCreatePage> {
  String title = '';
  String description = '';
  double price = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ListView(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Product Title'),
            onChanged: (String str) => setState(() => title = str),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Product Description'),
            maxLines: 4,
            onChanged: (String str) => setState(() => description = str),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Product Price'),
            keyboardType: TextInputType.number,
            onChanged: (String str) =>
                setState(() => price = double.parse(str)),
          ),
          RaisedButton(
            child: Text('Save'),
            onPressed: () {
              final Map<String, dynamic> product = {
                'title': this.title,
                'description': this.description,
                'price': this.price,
                'image': 'assets/food.jpg'
              };
              widget.addProduct(product);
            },
          )
        ],
      ),
    );
  }
}
