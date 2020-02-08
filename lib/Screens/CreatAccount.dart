import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import '../widget/CreateAccount.dart';

class CeateAccountScreen extends StatefulWidget {
  @override
  _CeateAccountScreenState createState() => _CeateAccountScreenState();
}

class _CeateAccountScreenState extends State<CeateAccountScreen> {
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
            '',
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
          child: Column(children: <Widget>[
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
                  Text(Localizations.localeOf(context).languageCode ==
                      "ar"?Logo = 'ايجى سوق':Logo = "EgySouq"
                    ,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CreatAccount(),
          ]),
        ),
      ),
    );
  }
}
