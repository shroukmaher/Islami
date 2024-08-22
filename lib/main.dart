import 'package:assignment_one/ui/Providers/lang_Provider.dart';
import 'package:assignment_one/ui/Providers/theme_provider.dart';
import 'package:assignment_one/ui/screens/home.dart';
import 'package:assignment_one/ui/screens/sebha/sebha.dart';
import 'package:assignment_one/ui/screens/splash/splash.dart';
import 'package:assignment_one/ui/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() {

  runApp(ChangeNotifierProvider(
  create: (_)=>ThemeProvider(),
    child: ChangeNotifierProvider(
        create: (context)=>LanguagePRovider()
        ,child: MyApp()),
  ));

}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LanguagePRovider languageProvider = Provider.of(context);
    ThemeProvider themeProvider = Provider.of(context);
    return MaterialApp(
      theme: AppStyle.lightTheme,
      darkTheme: AppStyle.darkTheme,
      themeMode: themeProvider.curentTheme,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'), // arabic
      ],
      locale: Locale(languageProvider.selectedLanguage),
      routes: {
        Splash.routeName: (_) => const Splash(),
        Home.routeName: (_) => Home(),
        Sebha.routeName: (_) => Sebha()
      },
      initialRoute: Splash.routeName,
    );
  }




}
