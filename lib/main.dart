import 'package:assignment_one/ui/screens/home.dart';
import 'package:assignment_one/ui/screens/splash/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Splash.routeName:(_)=>const Splash(),
        Home.routeName:(_)=> Home()
      },
      initialRoute: Splash.routeName,
    );

  }
}
