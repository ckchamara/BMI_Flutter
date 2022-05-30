import 'dart:html';

import 'package:flutter_first/constants/app_constants.dart';
import 'package:flutter_first/widgets/left_bar.dart';
import 'package:flutter_first/widgets/right_bar.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Homescreen> {
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  double _bmiResult = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Caclulator",
          style: TextStyle(color: accentHexColor, fontWeight: FontWeight.w300),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: mainHexColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                    style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: accentHexColor),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Height",
                        hintStyle: TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.w300,
                            color: Colors.white.withOpacity(.8))),
                  ),
                ),
                Container(
                  width: 130,
                  child: TextField(
                    style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: accentHexColor),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Weight",
                        hintStyle: TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.w300,
                            color: Colors.white.withOpacity(.8))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Text(
                "Calculate",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: accentHexColor),
              ),

            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Text(
                "10",
                style: TextStyle(
                    fontSize: 90,
                    color: accentHexColor),
              ),

            ),
            SizedBox(height: 30,),
            Container(
              child: Text(
                "Normal Weight",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                    fontSize: 32,
                    color: accentHexColor),
              ),

            ),
            SizedBox(height: 10,),
            LeftBar(barWidth: 40),
            SizedBox(height: 20,),
            LeftBar(barWidth: 70),
            SizedBox(height: 20,),
            LeftBar(barWidth: 40),

            SizedBox(height: 20,),
            RightBar(barWidth:70),
            SizedBox(height: 50,),
            RightBar(barWidth: 40)
          ],
        ),
      ),
    );
  }
}
