import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:provider/provider.dart';

import 'Data/Data.dart';
import 'Screens/TopScreen.dart';

import 'Localization/ِApplocalization.dart';
import 'Localization/AppLanguage.dart';

import 'package:easy_localization/easy_localization.dart';

void main() {
  runApp(EasyLocalization(
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Data()),
        ChangeNotifierProvider.value(value: AppLanguage()),
      ],
      child: EasyLocalizationProvider(
        data: data,
        child: MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          supportedLocales: [
            Locale('en', 'US'),
            Locale('ar', ''),
          ],
          localizationsDelegates: [
            AppLocalizationsDelegate(),
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            EasylocaLizationDelegate(useOnlyLangCode: true,locale: data.locale, path: 'i18n'),
          ],
          locale: data.savedLocale,
          home: TopScreen(),
        ),
      ),
    );
  }
}
