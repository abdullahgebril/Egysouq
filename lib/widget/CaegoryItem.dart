




import 'package:flutter/material.dart';
import '../Screens/ProductsScreens.dart';
class CategoryItem extends StatelessWidget {
  final String categoryimage;
  final String categoryArbTitle;
  final String categoryEnTitle;
  CategoryItem(this.categoryEnTitle,this.categoryArbTitle,this.categoryimage);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductScreen(categoryArbTitle)),
        );
      },
      child: Container(
        padding: EdgeInsets.all(15),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          ),
          child: Row(
            children: <Widget>[
              Container(padding: EdgeInsets.all(15),height:100,width: 100 ,child: Image.asset(categoryimage)),
              SizedBox(width: 15,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(categoryArbTitle
                      ,style: TextStyle(
                        color: Colors.blue,fontSize: 16
                      ),
                    ),
                    Text(categoryEnTitle
                      ,style: TextStyle(
                          color: Colors.blue,fontSize: 16
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
