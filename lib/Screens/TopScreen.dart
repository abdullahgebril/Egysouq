



import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'ShareScreen.dart';

class TopScreen extends StatefulWidget {
  @override
  _TopScreenState createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,

      child: Scaffold(
        appBar: AppBar(

          bottom: TabBar(
            unselectedLabelColor: Colors.black,
            labelStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.greenAccent
            ),

            tabs: <Widget>[

              Tab(
                icon: Icon(Icons.category),
                text: 'الصفحة الرئيسية',
              ),
              Tab(
                icon: Icon(Icons.share),
                text: 'شارك',
              )
            ],
          ),
        ),
         body: TabBarView(
           children: <Widget>[
             HomeScreen(),
             ShareScreen()

           ],
         ),
       ),
    );
  }
}

