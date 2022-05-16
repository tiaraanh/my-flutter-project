import 'package:bmi/views/bmi_data_screen.dart';
import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  const BmiResultScreen({Key? key, required this.bmi}) : super(key: key);
  final double bmi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI RESULT"),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    "YOUR RESULT",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: BmiCard(
                  child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Normal",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "${bmi.toStringAsFixed(1)}",
                        style: TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Your BMI result is great! Try to Keep it up!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ]),
              )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 80,
                color: Color(0xffEEB0B0),
                child: Center(
                  child: Text(
                    "RE-CALCULATE",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
