import 'package:assignment_one/ui/screens/home.dart';
import 'package:assignment_one/ui/screens/sebha/sebha.dart';
import 'package:assignment_one/ui/screens/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates:  [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'), // arabic
      ],
      locale: const Locale("ar"),
      routes: {
        Splash.routeName:(_)=>const Splash(),
        Home.routeName:(_)=> Home(),
        Sebha.routeName:(_)=>Sebha()
      },
      initialRoute: Splash.routeName,
    );

  }
}
