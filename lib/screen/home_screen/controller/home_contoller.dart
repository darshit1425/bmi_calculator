import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home_Contoller extends GetxController{


  double height = 1;
  double weight = 1;

  double age = 1;
  double orheight = 1;

  String Underweight = "";
  int i = 0;

  Color female = Color(0xFF1D1E33);
  Color feiconclick = Color(0xFFeb1555);

  BorderRadius clickborder = BorderRadius.all(Radius.circular(14));
  Color feafterclickIcon = Colors.white;
  Color clickfemale = Color(0xFF3b3c4d);
  BorderRadius beforclickborder = BorderRadius.all(Radius.circular(18));
  Color male = Color(0xFF1D1E33);
  Color maiconclick = Color(0xFFeb1555);
  Color maafterclickIcon = Color(0xFFffffff);
  Color clickmale = Color(0xFF3b3c4d);
}