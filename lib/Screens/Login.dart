import 'package:egysouq/Localization/%D9%90Applocalization.dart';
import 'package:egysouq/widget/LoginForm.dart';
import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import '../Localization/ِApplocalization.dart';

class Login extends StatefulWidget {
  final String title;
  Login(this.title);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String lantitle = 'Eng';
  String Logo = 'EgySouq';

  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;

    return EasyLocalizationProvider(
      data: data,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/background.jpeg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.cyanAccent.withOpacity(0.2), BlendMode.dstOut),
          )),
          child: Column(
            children: <Widget>[
              Container(
                color: Color.fromRGBO(213, 100, 80, 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    MaterialButton(
                      height: 50,
                      onPressed: () {
                        this.setState(() {
                          if (Localizations.localeOf(context).languageCode ==
                              "ar") {
                            data.changeLocale(Locale("en", "US"));
                            lantitle = 'Eng';
                          } else if (Localizations.localeOf(context)
                                  .languageCode ==
                              "en") {
                            data.changeLocale(Locale("ar", ""));
                            lantitle = 'عربى';
                          }
                        });
                      },
                      child: Text(
                        lantitle,
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                    Text(
                      Localizations.localeOf(context).languageCode ==
                          "ar"?Logo = 'ايجى سوق':Logo = "EgySouq",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.only(right: 15),
                    height: 50,
                    width: 50,
                    child: Image.asset('assets/images/arrowback.png'),
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),
              LogInForm(),
            ],
          ),
        ),
      ),
    );
  }
}
