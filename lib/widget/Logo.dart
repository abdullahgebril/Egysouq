



import 'package:flutter/material.dart';
import '../Screens/Login.dart';
class Logo extends StatelessWidget {
  final String title;
  Logo(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color.fromRGBO(213,100,80,1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            children: <Widget>[
              RaisedButton(
                color: Colors.white,
                onPressed: (){},
                child: Text('Lan',style: TextStyle(
                    color: Colors.black
                ),),

              ),
              SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login(title)),
                  );
                },
                child: Container(
                  child: Text('Log in',style: TextStyle(
                    color: Colors.white,fontSize: 18
                  ),),
                ),

              ),
            ],
          ),


          Text('ايجى سوق',style: TextStyle(
            fontSize: 18,color: Colors.white
          ),)
        ],
      ),
    );
  }
}
