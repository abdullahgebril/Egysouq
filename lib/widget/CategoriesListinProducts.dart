


import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '../Data/Data.dart';
class CategoriesListinProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cateogories = Provider.of<Data>(context).categories;
    return Container(
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children:cateogories.map((categoey) => Container(
          color: Colors.white,
          child: Row(
             children: <Widget>[
               Container(
    height: 20,
    width: 20,
    child: Image.asset(categoey.categoryImage),

    ),
    SizedBox(width: 4,),
    Text(
    categoey.enTitle,style: TextStyle(fontSize: 12),
    ),SizedBox(
                 width: 5,
               )
    ],

    ),
        )
    ).toList() ,

    ),);
  }
}
