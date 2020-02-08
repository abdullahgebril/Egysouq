import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Data/Data.dart';

class CategoriesIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cateogories = Provider.of<Data>(context).categories;
    return Container(
      padding: EdgeInsets.only(left: 15),
      child: Column(children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: RaisedButton(
            onPressed: () {},
            child: Text(
              ' +اضف اعلانك ',
              style: TextStyle(color: Colors.green),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 60,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: cateogories
                .map((categoey) => Container(
              color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Container(

                        height: 40,
                        width: 40,
                        child: Image.asset(categoey.categoryImage),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ))
                .toList(),
          ),
        )
      ]),
    );
  }
}
