import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splsh_Screen extends StatefulWidget {
  const Splsh_Screen({Key? key}) : super(key: key);

  @override
  State<Splsh_Screen> createState() => _Splsh_ScreenState();
}

class _Splsh_ScreenState extends State<Splsh_Screen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 3),
          () {
        Navigator.pushReplacementNamed(context,
             'Home'); 
      },
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff101438),
        body: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset("assets/images/image.png",
                  fit: BoxFit.contain, width: 150, height: 150),
            ),
            Text(
              "BMI CALULATOR",
              style: TextStyle(
                  color: Colors.white, fontSize: 20, letterSpacing: 2),
            ),
            SizedBox(
              height: 400,
            ),
            CircularProgressIndicator(
              backgroundColor: Colors.pink,
              color: Color(0xff101438),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "check your BMI",
              style: TextStyle(color: Colors.grey.shade400, letterSpacing: 1),
            ),
          ],
        ),
      ),
    );
  }
}
