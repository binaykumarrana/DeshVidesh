import 'package:deshvidesh/home/home.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  route() {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[400],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 250.0,
              child: ScaleAnimatedTextKit(
                textAlign: TextAlign.center,
                alignment: Alignment.center,
                isRepeatingAnimation: false,
                onFinished: () {
                  route();
                },
                text: ["Jano", "Desh", "Videsh"],
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 70.0,
                    fontFamily: "PoppinsBold"),
              ),
            ),
            Text(
              "Explore and Enhance Knowledge",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 21.0,
                  fontFamily: 'PoppinsSemiBold'),
            ),
          ],
        ),
      ),
    );
  }
}
