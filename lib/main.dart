import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sweet_time_ui/styles/app_colors.dart';
import 'package:sweet_time_ui/ui/screens/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.primaryColor,
            colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColors.primaryColor),
            appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AppColors.primaryColor
          )
      )
      ),
      home: StartScreen(),
    );
  }
}
