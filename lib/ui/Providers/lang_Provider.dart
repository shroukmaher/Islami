import 'package:flutter/material.dart';

class LanguagePRovider extends ChangeNotifier{
  String selectedLanguage="en";

  set newLanguage(String lang){
    selectedLanguage=lang;
    notifyListeners();
  }

}