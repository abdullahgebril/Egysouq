

import 'package:flutter/material.dart';
import '../widget/CategoriesListinProducts.dart';
import '../widget/Logo.dart';
import '../widget/CategoriesIconsListInProducts.dart';
class ProductScreen extends StatelessWidget {
  final String title;
  ProductScreen(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title,style: TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),),

      ),
      body: Column(
        children: <Widget>[
          CategoriesListinProducts(),
          Logo(title),
//          CategoriesIcons()

        ],
      ),

    );
  }
}
