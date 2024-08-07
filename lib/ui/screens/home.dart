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

class Home extends StatefulWidget {
  static const String routeName = "home/";

  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int SelectedTabIndex = 0;
  List<Widget>tabs=  [Quran(),hadeth(),Sebha(),IRadio(),Settings()];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(AppAssets.background)),
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
          "Islami",
          style: AppStyle.appBarTextStyle,
        ),
        centerTitle: true,
        backgroundColor: AppColors.transparent,
        elevation: 0,
      );

  Theme buildBottomNavigation()=> Theme(
    data: ThemeData(canvasColor: AppColors.lightPrimary),
    child: BottomNavigationBar(
      currentIndex: SelectedTabIndex,
      onTap: (index) {
        setState(() {});
        SelectedTabIndex = index;
      },
      selectedItemColor: AppColors.lightBlack,
      items: const [
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
            label: "Settings")
      ],
    ),
  );
}