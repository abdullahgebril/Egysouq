import 'package:flutter/material.dart';

import '../Data/Data.dart';
import '../widget/CaegoryItem.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHwight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final categories = Provider.of<Data>(context).categories;
    return Scaffold(

      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: screenHwight * 0.4,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/ecommercewallpaper.jpg'),
                      fit: BoxFit.cover,colorFilter: ColorFilter.mode(Colors.cyanAccent.withOpacity(0.2), BlendMode.dstOut))),
            ),
            Positioned(
              top: screenHwight * 0.06,
              left: screenHwight * 0.015,
              child: Container(
                height: 100,
                width: 100,
                child: Card(
                  child: FittedBox(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/logo.jpg'),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHwight * 0.2,
              left: screenWidth * 0.015,
              right: screenWidth * 0.015,
              child: Text(
                ' سوق لكل ما تحتاج ليه فى حياتك اليومية ',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.only(top: screenHwight * 0.3),
          height:  categories
              .map((categoey) => CategoryItem(categoey.enTitle,
              categoey.arbTitle, categoey.categoryImage))
              .toList().length * 200.0,
          width: screenWidth,
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: categories
                .map((categoey) => CategoryItem(categoey.enTitle,
                    categoey.arbTitle, categoey.categoryImage))
                .toList(),
          ),
        ),
    ],),
        ),

    );
  }
}
