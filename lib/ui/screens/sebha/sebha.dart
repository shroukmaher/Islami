import 'package:assignment_one/ui/utils/app_assets.dart';
import 'package:assignment_one/ui/utils/app_colors.dart';
import 'package:assignment_one/ui/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sebha extends StatefulWidget {
  static const String routeName="sebha/";
  const Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  double turns = 0.0;

  void _changeRotation() {
    setState(() => turns += 1.0 / 8.0);
  }
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 5,
          child: AnimatedRotation(
            turns: turns,duration: const Duration(seconds: 1),
            child: Stack(
              children: [
                Positioned(top:10.7,left:4,right:5,child: Image.asset(AppAssets.headSebha,height: 100,)),

                Positioned(top:0.0,left:5,right:7,child: Image.asset(AppAssets.SebhaLogo)),
              ],
            ),
          ),
        ),
        Expanded(flex: 5,
          child: Column(
            children: [
              Row( mainAxisAlignment: MainAxisAlignment.center ,
                children: [
                  Text("عدد التسبيحات",style: AppStyle.regularTitleTextStyle,),
                ],
              ),
    Container(padding: EdgeInsets.all(20),child:Text(count.toString()),decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)
    ,color: AppColors.lightPrimary)),
              SizedBox(height: 18,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children
                    : [
                  TextButton(child: Text("سبحان الله"),style: TextButton.styleFrom(foregroundColor:Colors.white,padding: EdgeInsets.all(20),backgroundColor: AppColors.lightPrimary),
                      onPressed: (){
                        ++count;
                        _changeRotation();
                        setState(() {

                        });
                      }
                  ),
                ],
              )
    ],
          ),
        ),


               ]






      
    );
  }
}
