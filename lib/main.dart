import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/UpOnly%20Login/Screens/landingScreen.dart';
import 'package:state_management/login_upOnly.dart';
// import 'package:flutter/services.dart';
import 'package:state_management/screen1.dart';
import '../services.dart';
import '../text_moving.dart';
import 'UpOnly Login/Screens/BorderBox.dart';
import 'UpOnly Login/Screens/home_Screen.dart';
import 'UpOnly Login/Screens/login_UpOnly2.dart';
import 'UpOnly Login/practice.dart';
import 'dropDown.dart';

void main() {
  // Status Bar Color Change
  // SystemChrome.setSystemUIOverlayStyle(
  //     SystemUiOverlayStyle(statusBarColor: Colors.blue));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final Services servie = Get.put(Services());
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        unselectedWidgetColor: Colors.grey,
      ),
      home: const HomeScreen(),
    );
  }
}
