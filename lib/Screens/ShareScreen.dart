import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShareScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHwight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(

      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: screenHwight * 0.3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/space.jpeg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.cyanAccent.withOpacity(0.2),
                            BlendMode.dstOut))),
              ),
              Positioned(
                top: 30,
                left: screenWidth / 2 - 50,
                child: Container(
                  width: 100,
                  height: 100,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/logo.jpg'),
                  ),
                ),
              ),
              Positioned(
                child: Container(
                  padding: EdgeInsets.only(
                      top: screenHwight * 0.2, left: 20, right: 20, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 100, right: 100),
                        child: Text(
                          'أيجى سوق',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.only(bottom: 20),
                        width: screenWidth,
                        child: RaisedButton(
                          onPressed: (){},
                          color: Colors.black54,
                          child: Text(
                            'Share',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 15),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'الرجاء نشر التطبيق',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
