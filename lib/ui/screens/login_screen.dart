import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:sweet_time_ui/ui/screens/customer_screen.dart';
import 'package:sweet_time_ui/ui/widgets/app_rounded_text_field.dart';
import 'package:sweet_time_ui/utils/ui_helper.dart';

import '../../styles/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
         value: SystemUiOverlayStyle.light.copyWith(statusBarColor: Theme.of(context).primaryColor.withOpacity(.5)),
       child: SingleChildScrollView(
         child: Container(
           width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height,
           decoration: BoxDecoration(
          //   color: AppColors.primaryColor.withOpacity(.15),
             border: Border(
                 top: BorderSide(color: AppColors.primaryColor, width: 2.5,),
                 right: BorderSide(color: AppColors.primaryColor,width: 1.5),
                 left: BorderSide(color: AppColors.primaryColor,width: 2.5),
                 bottom: BorderSide(color: AppColors.primaryColor,width: 1.5)
             ),
           ),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Container(
               width: MediaQuery.of(context).size.width-80,
               height: MediaQuery.of(context).size.height/1.5,
               decoration: BoxDecoration(
                 color: AppColors.primaryColor.withOpacity(.5),
                 border: Border.all(color: AppColors.primaryColor),
                 borderRadius: BorderRadius.circular(50),
               ),
               child: Padding(
                 padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                 child: Container(
                   padding: EdgeInsets.only(top: 10,left: 50, right: 50),
                   width: MediaQuery.of(context).size.width-80,
                   height:MediaQuery.of(context).size.height/1.5,
                   decoration: BoxDecoration(
                     color: Colors.red[100],
                     borderRadius: BorderRadius.circular(50),

                   ),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       const SizedBox(height: 20,),
                       Image.asset('assets/icon.png'),
                       Text('Login with',
                       style: TextStyle(
                         fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.textColor,
                           shadows: [
                             Shadow(
                                 color: AppColors.primaryColor.withOpacity(.5),
                                 offset: Offset(5, 5),
                                 blurRadius: 4.0
                             )
                           ]
                       ),),
                       const SizedBox(height: 20,),
                       AppRoundedTextField(onChanged: (val){},
                         hintText: 'Email',

                       radius: 5,),
                       const SizedBox(height: 15,),
                       AppRoundedTextField(onChanged: (val){},
                         hintText: 'Number',

                         radius: 5,),
                       const SizedBox(height: 15,),
                       AppRoundedTextField(onChanged: (val){},
                         hintText: 'Google',
                         radius: 5,),
                       const SizedBox(height: 30,),
                       GestureDetector(
                         onTap: ()=>UIHelper.gotoScreen(context, CustomerScreen()),
                         child: Container(
                           alignment: Alignment.center,
                           width: double.infinity,
                           height: 50,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(5),
                             color: AppColors.primaryColor.withOpacity(.25),
                           ),
                           child: Text('Log IN',
                           style: TextStyle(
                             fontWeight: FontWeight.w400, fontSize: 14, color: AppColors.textColor
                           ),),
                         ),
                       )
                     ],
                   ),
                 ),
               ),
             ),
           ],
         ),
         ),
       ),
      ),
    );
  }
}
