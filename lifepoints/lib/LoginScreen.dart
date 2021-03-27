import 'package:flutter/material.dart';
import 'package:lifepoints/Utilities.dart';
import 'LifePointsMainLogo.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // padding: EdgeInsets,
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(height: 250, width: 250, child: LifePointMainLogo()),
            TextFormField(
              style: TextStyle(color: Utilities.white),
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: InputDecoration(
                  hintText: 'EMAIL',
                  labelText: "EMAIL",
                  labelStyle: TextStyle(color: Utilities.grey),
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                  border: UnderlineInputBorder(),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Utilities.purple, width: 3),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Utilities.purple, width: 3),
                  ),
                  suffixIcon: Icon(
                    Icons.check,
                    size: 20,
                    color: Utilities.white,
                  )),
            ),
            TextFormField(
              style: TextStyle(color: Utilities.white, fontSize: 20),
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "PASSWORD",
                  labelStyle: TextStyle(color: Utilities.grey),
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                  border: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Utilities.purple, width: 3)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Utilities.purple, width: 3)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Utilities.purple, width: 3)),
                  suffixIcon: Icon(
                    Icons.check,
                    size: 20,
                    color: Utilities.white,
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot password ?",
                      style: TextStyle(color: Utilities.white),
                    ))
              ],
            ),
            Container(
              color: ,
              margin: EdgeInsets.only(left: 10,right: 10),
              child: ElevatedButton(
                  child: Text("LOG IN", style: TextStyle(color: Utilities.white),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
