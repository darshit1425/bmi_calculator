import 'package:bmi_calculator/screen/home_screen/controller/home_contoller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home_Screen extends StatefulWidget {
  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  List<String> weightstatus = [
    "Underweight ",
    "Healthy Weight ",
    "Overweight",
    "Obesity",
  ];
  double ans = 1;

  double hig = 1;
  Home_Contoller contoller = Get.put(Home_Contoller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF090E21),
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                contoller.i = 0;
              });
            },
            icon: Icon(Icons.refresh),
          ),
        ],
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xFF090E21),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(
                      () {
                        contoller.male = contoller.clickmale;
                        contoller.clickborder = contoller.beforclickborder;
                        contoller.maafterclickIcon = contoller.maiconclick;
                      },
                    );
                  },
                  child: Ink(
                    child: Container(
                      margin: EdgeInsets.all(15),
                      height: 140,
                      width: 150,
                      decoration: BoxDecoration(
                        color: contoller.male,
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.male_outlined,
                            color: contoller.maafterclickIcon,
                            size: 80,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Male",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // SizedBox(width: 2,),
                InkWell(
                  onTap: () {
                    setState(
                      () {
                        contoller.female = contoller.clickfemale;
                        contoller.feafterclickIcon = contoller.feiconclick;
                      },
                    );
                  },
                  child: Ink(
                    child: Container(
                      margin: EdgeInsets.all(15),
                      height: 140,
                      width: 150,
                      alignment: Alignment(0, 0.8),
                      child: Column(
                        children: [
                          Icon(
                            Icons.female,
                            color: contoller.feafterclickIcon,
                            size: 80,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Female",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: contoller.beforclickborder,
                        color: contoller.female,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 160,
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Center(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "HEIGHT",
                            style: TextStyle(
                              letterSpacing: 1,
                              color: Color(0xFF626473),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "${contoller.height.toInt()}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                          ),
                        ),
                        TextSpan(
                          text: " cm",
                          style: TextStyle(
                            color: Color(0xFF626473),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Slider(
                    min: 1,
                    max: 360,
                    value: contoller.height,
                    inactiveColor: Color(0xff555555).withOpacity(0.5),
                    thumbColor: Color(0xFFEB1555),
                    activeColor: Color(0xFFf5c1d1).withOpacity(0.5),
                    onChanged: (e) {
                      setState(
                        () {
                          contoller.height = e;
                        },
                      );
                      contoller.height.toInt();
                    },
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Color(0xFF1D1E33),
                borderRadius: BorderRadius.all(Radius.circular(14)),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  height: 170,
                  width: 150,
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Center(
                        child: Text.rich(
                          TextSpan(
                            text: "Weight",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text.rich(
                        TextSpan(
                          text: "${contoller.weight.toInt()}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(
                                () {
                                  contoller.weight++;
                                },
                              );
                            },
                            child: Ink(
                              child: Container(
                                width: 50,
                                height: 50,
                                alignment: Alignment.center,
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.white,
                                    wordSpacing: -1,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFF6e6f7a),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          InkWell(
                            onTap: () {
                              setState(
                                () {
                                  contoller.weight--;
                                },
                              );
                            },
                            child: Ink(
                              child: Container(
                                width: 50,
                                height: 50,
                                alignment: Alignment.center,
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.white,

                                    // fontWeight: FontWeight.w600,
                                    wordSpacing: -1,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFfffff),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  height: 170,
                  width: 150,
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Center(
                        child: Text.rich(
                          TextSpan(
                            text: "Age",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text.rich(
                        TextSpan(
                          text: "${contoller.age.toInt()}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                contoller.age++;
                              });
                            },
                            child: Ink(
                              child: Container(
                                width: 50,
                                height: 50,
                                alignment: Alignment.center,
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.white,
                                    wordSpacing: -1,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFF6e6f7a),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          InkWell(
                            onTap: () {
                              setState(() {
                                contoller.age--;
                              });
                            },
                            child: Ink(
                              child: Container(
                                width: 50,
                                height: 50,
                                alignment: Alignment.center,
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.white,

                                    // fontWeight: FontWeight.w600,
                                    wordSpacing: -1,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFfffff),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  alignment: Alignment(0, 0.8),
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                setState(() {});
              },
              child: Ink(
                child: Container(
                  height: 30,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    "${contoller.Underweight}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                setState(
                  () {
                    if (contoller.age > 2) {
                      contoller.orheight = contoller.height / 100;
                      ans = contoller.weight /
                          (contoller.orheight * contoller.orheight);
                    }
                    if (ans < 18.5) {
                      contoller.Underweight =
                          "${ans.toStringAsFixed(2)} = Underweight";
                    } else if (ans >= 18.5 && ans <= 25) {
                      contoller.Underweight =
                          "${ans.toStringAsFixed(2)} = Healthy Weight";
                    } else if (ans >= 25 && ans <= 30) {
                      contoller.Underweight =
                          "${ans.toStringAsFixed(2)} = Overweight";
                    } else if (ans >= 30) {
                      contoller.Underweight =
                          "${ans.toStringAsFixed(2)} = Obesity";
                    }
                  },
                );
              },
              child: Ink(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "CALCULATE YOUR BMI",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFEB1555),
                    // borderRadius: BorderRadius.circular(200),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
