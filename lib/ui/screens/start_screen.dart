import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sweet_time_ui/styles/app_colors.dart';
import 'package:sweet_time_ui/ui/screens/login_screen.dart';
import 'package:sweet_time_ui/utils/app_constants.dart';
import 'package:sweet_time_ui/utils/ui_helper.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), ()async{
      startScreen();
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light.copyWith(statusBarColor: Theme.of(context).primaryColor.withOpacity(.5)),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
         // color: AppColors.primaryColor.withOpacity(.15),
         border: Border(
           top: BorderSide(color: AppColors.primaryColor, width: 2.5,),
           right: BorderSide(color: AppColors.primaryColor,width: 1.5),
           left: BorderSide(color: AppColors.primaryColor,width: 2.5),
           bottom: BorderSide(color: AppColors.primaryColor,width: 1.5)
         ),

    ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icon.png'),
            RichText(textAlign: TextAlign.center,
                text: TextSpan(

              text: AppConstants.APP_NAME+'\n',
              style: TextStyle( shadows: [
                Shadow(
                    color: AppColors.primaryColor.withOpacity(.5),
                    offset: Offset(5, 5),
                    blurRadius: 4.0
                )
              ],
              fontSize: 36, fontWeight: FontWeight.bold, color: AppColors.textColor),
              children: [
                TextSpan(
                  text: AppConstants.START_INTRO,
                  style: TextStyle(
                      shadows: [
                        Shadow(
                            color: AppColors.primaryColor.withOpacity(.25),
                            offset: Offset(5, 5),
                            blurRadius: 4.0
                        )
                      ],
                      fontWeight: FontWeight.w500, fontSize: 18, color: AppColors.textColor
                  )
                )
              ]
            ))
          ],
        )
      ),
      ),
    );
  }

  void startScreen() async{
    UIHelper.gotoScreen(context, LoginScreen());
  }
}
