import 'package:flutter/material.dart';
import 'package:ticket_box/Screens/Login/components/background.dart';
import 'package:ticket_box/Screens/Signup/signup_screen.dart';
import 'package:ticket_box/components/already_have_an_account_acheck.dart';
import 'package:ticket_box/components/rounded_button.dart';
import 'package:ticket_box/components/rounded_input_field.dart';
import 'package:ticket_box/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Helvetica-Bold',
                fontSize: 30,
              ),
            ),
            Image.asset(
              "assets/icons/loginn.png",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            AlreadyHaveAnAccountCheck(
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
          ],
        ),
      ),
    );
  }
}
