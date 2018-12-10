import 'package:flutter/material.dart';
import 'package:flutter_course/pages/product_create.dart';
import 'package:flutter_course/pages/product_list.dart';

import 'package:flutter_course/pages/products.dart';

class ProductAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          drawer: Drawer(
            child: Column(
              children: <Widget>[
                AppBar(
                  automaticallyImplyLeading: false,
                  title: Text('Choose'),
                ),
                ListTile(
                  title: Text('Products'),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => ProductsPage(),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
          appBar: AppBar(
            title: Text('Manage products'),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.create),
                ),
                Tab(
                  icon: Icon(Icons.list),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ProductCreatePage(),
              ProductListPage(),
            ],
          )),
    );
  }
}
