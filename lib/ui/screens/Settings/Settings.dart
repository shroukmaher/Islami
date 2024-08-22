import 'package:assignment_one/ui/Providers/lang_Provider.dart';
import 'package:assignment_one/ui/utils/app_colors.dart';
import 'package:assignment_one/ui/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Providers/theme_provider.dart';

class Settings extends StatefulWidget {

   Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  late LanguagePRovider languageProvider;
  late ThemeProvider themeProvider;




  @override
  Widget build(BuildContext context) {
    languageProvider=Provider.of(context);
    themeProvider=Provider.of(context);

    return Padding(
    padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        Text("Language",style: AppStyle.regularTitleTextStyle,),
        SizedBox(height: 18),buildDropDownLangMenu(),
        SizedBox(height: 18,),
        Row(
          children: [
            Text("Theme",style: AppStyle.regularTitleTextStyle,),
           Spacer(),buildThemeSwitch() ],
        ),

      ],),
    );
  }

  buildThemeSwitch() =>Switch(
    activeColor: AppColors.lightPrimary,
    value: themeProvider.isDarkEnabled ,
    onChanged: (newValue) async{

      themeProvider.newTheme=newValue?ThemeMode.dark:ThemeMode.light;
      final pref=await SharedPreferences.getInstance();
      pref.setBool('isDarkEnabled',themeProvider.isDarkEnabled);
      setState(() {

      });
    },);

  buildDropDownLangMenu() =>DropdownButton(
    isExpanded: true,
    value: languageProvider.selectedLanguage,
    items: const [
      DropdownMenuItem<String>(child: Text("العربية") ,value: "ar",),
      DropdownMenuItem<String>(child: Text("English") ,value: "en",)
    ],
    onChanged: (newValue){
      languageProvider.newLanguage=newValue??languageProvider.selectedLanguage;
      setState(() {

      });

    },
  );


}


