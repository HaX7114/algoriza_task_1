import 'package:algoriza_task_1/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Modules/OnBoardingScreenModule/on_boarding_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      // navigation bar color
      statusBarColor: K_transparentColor,
      statusBarIconBrightness: Brightness.dark // status bar color
      ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Algoriza Task',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: K_transparentColor,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.dark,
          ),
        ),
      ),
      home: OnBoardingScreen(),
    );
  }
}
