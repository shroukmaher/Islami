import 'package:assignment_one/ui/Providers/theme_provider.dart';
import 'package:assignment_one/ui/screens/Settings/Settings.dart';
import 'package:assignment_one/ui/screens/hadeth/hadeth.dart';
import 'package:assignment_one/ui/screens/quran/quran.dart';
import 'package:assignment_one/ui/screens/radio/radio.dart';
import 'package:assignment_one/ui/screens/sebha/sebha.dart';
import 'package:assignment_one/ui/utils/app_assets.dart';
import 'package:assignment_one/ui/utils/app_colors.dart';
import 'package:assignment_one/ui/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  static const String routeName = "home/";

  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ThemeProvider themeProvider=ThemeProvider();

  int SelectedTabIndex = 0;
  List<Widget>tabs=  [Quran(),hadeth(),IRadio(),Sebha(),Settings()];


  @override
  void initState() {
    super.initState();
   _loadPreferences();
  }


  @override
  Widget build(BuildContext context) {
    themeProvider=Provider.of(context);
    return Container(
      decoration:  BoxDecoration(
        image:
        DecorationImage
          (image:
        AssetImage(themeProvider.isDarkEnabled?AppAssets.darkBackground: AppAssets.background)),
      ),
      child: Scaffold(
        appBar: buildAppbar(),
        backgroundColor: AppColors.transparent,
        bottomNavigationBar:buildBottomNavigation(),
        body:tabs[SelectedTabIndex],
      ),
    );
  }

  AppBar buildAppbar() => AppBar(
        title: Text(
         AppLocalizations.of(context)!.islami ,
        ),

      );

  Theme buildBottomNavigation()=> Theme(
    data: ThemeData( canvasColor: themeProvider.isDarkEnabled?AppColors.darkPrimary:AppColors.lightPrimary),
    child: BottomNavigationBar(
      currentIndex: SelectedTabIndex,
      onTap: (index) {
        setState(() {});
        SelectedTabIndex = index;
      },
      items:  [
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.icQuran)),
            label: "Quran"),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.icAhadeth)),
            label: "Ahadeth"),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.icRadio)),
            label: "Radio"),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.icSebha)),
            label: "Sebha"),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: AppLocalizations.of(context)!.settings)
      ],
    ),
  );



  void _loadPreferences() async{
    final prefs=await SharedPreferences.getInstance();

    setState(() {
      bool issaveddark= prefs.getBool('isDarkEnabled')?? false;
      themeProvider.newTheme=issaveddark?ThemeMode.dark:ThemeMode.light;

    });
  }

}
