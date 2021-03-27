import 'package:flutter/cupertino.dart';
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
          mainAxisAlignment: MainAxisAlignment.start,
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
            SizedBox(height:15 ,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Forgot password ?",
                      style: TextStyle(color: Utilities.white),
                    ))
              ],
            ),
            Spacer(),


            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                gradient: LinearGradient(
                    colors: [new Color(0xff5098F2),new Color(0xff0F68D7)])
              ),
              child: MaterialButton(
                onPressed: (){},minWidth: double.infinity,
                // shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),

                child: Text("Log In",style: TextStyle(color: Colors.white),),
              ),
            ),
           SizedBox(height: 10,),
           MaterialButton(onPressed: (){},
             child: Text("Don't have an account? Create one",style: TextStyle(color: Utilities.white,),),
           )




          ],
        ),
      ),
    );
  }
}
