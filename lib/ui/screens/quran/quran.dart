import 'package:assignment_one/ui/utils/app_assets.dart';
import 'package:assignment_one/ui/utils/app_colors.dart';
import 'package:assignment_one/ui/utils/app_styles.dart';
import 'package:assignment_one/ui/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Quran extends StatelessWidget {
  Quran({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(flex: 3, child: Image.asset(AppAssets.quranTabLogo)),
        Expanded(
          flex: 7,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(children: [
                Container(
                  width: double.infinity,
                  height: 3,
                  color: AppColors.lightPrimary,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Sura name",
                        textAlign: TextAlign.center,
                        style: AppStyle.regularTitleTextStyle,
                      ),
                    ),
                    Expanded(
                        child: Text(
                      "Verses",
                      textAlign: TextAlign.center,
                      style: AppStyle.regularTitleTextStyle,
                    ))
                  ],
                ),
                Divider(
                  thickness: 3,
                  indent: 2,
                  endIndent: 2,
                  color: AppColors.lightPrimary,
                ),
                builSurasList()
              ]),
              VerticalDivider(
                color: AppColors.lightPrimary,
                thickness: 3,
              )
            ],
          ),
        )
      ],
    );
  }

  Expanded builSurasList() {
    return Expanded(
        flex: 7,
        child: ListView.builder(
            itemCount: 114,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Expanded(
                    child: Text(
                      Constants.suraNames[index],
                      textAlign: TextAlign.center,
                      style: AppStyle.regularTitleTextStyle,
                    ),
                  ),
                  Expanded(
                      child: Text(
                    Constants.versesNumber[index].toString(),
                    textAlign: TextAlign.center,
                    style: AppStyle.regularTitleTextStyle,
                  ))
                ],
              );
            }));
  }
}
