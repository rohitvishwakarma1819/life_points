import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      setState(() {
        print("screen tapped rohit");
      });
    },
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Stack(children: <Widget>[
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0XFF24244B), width: 2.0),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("images/life_points_logo.png"))),
              ),
              Positioned(
                top: 20,
                  left: 230,
                  child: Image(
                image: AssetImage("images/life_points_logo.png"),
                height: 40,
                width: 40,
              ))
            ]),
          ),
        ),
      ),
    );
  }
}
