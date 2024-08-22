
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
 ThemeMode curentTheme=ThemeMode.light;

 set newTheme(ThemeMode thememode){
   curentTheme=thememode;
 }

 bool get isDarkEnabled=> curentTheme==ThemeMode.dark;
   notifyListeners();

}