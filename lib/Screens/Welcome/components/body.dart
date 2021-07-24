import 'package:flutter/material.dart';
import 'package:ticket_box/Screens/Login/login_screen.dart';
import 'package:ticket_box/Screens/Signup/signup_screen.dart';
import 'package:ticket_box/Screens/Welcome/components/background.dart';
import 'package:ticket_box/components/rounded_button.dart';
import 'package:ticket_box/constant.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome To  ",
              style: new TextStyle(
                fontFamily: 'Billabong',
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 50,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Image.asset(
              "assets/logo.png",
              height: size.height * 0.2,
            ),
            RoundedButton(
              text: "LOGIN",
              color: Colors.blue,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(
              height: 5,
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(
              height: 5,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Text(
                "Copy Right©2021. All Reserved ",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Text(
                "Powered by Mifta ",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
