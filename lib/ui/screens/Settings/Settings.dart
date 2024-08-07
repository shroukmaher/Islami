import 'package:assignment_one/ui/utils/app_colors.dart';
import 'package:assignment_one/ui/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {

   Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String SelectedLanguage="en";

  bool isDarkThemeEnabled=false;

  @override
  Widget build(BuildContext context) {
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
    value: isDarkThemeEnabled,
    onChanged: (newValue){
      isDarkThemeEnabled=newValue;
      setState(() {

      });
    },);

  buildDropDownLangMenu() =>DropdownButton(
    isExpanded: true,
    value: SelectedLanguage,
    items: const [
      DropdownMenuItem<String>(child: Text("العربية") ,value: "ar",),
      DropdownMenuItem<String>(child: Text("English") ,value: "en",)
    ],
    onChanged: (newValue){
      SelectedLanguage=newValue??SelectedLanguage;
      setState(() {

      });

    },
  );
}