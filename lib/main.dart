import 'package:bmi_calculator/screen/home_screen/view/home_screen.dart';
import 'package:bmi_calculator/screen/splash_screen/view/splsh_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: 'Home',
      routes: {
        '/': (p0) => Splsh_Screen(),
        'Home':(p0) =>  Home_Screen()
      },
    ),
  );
}
