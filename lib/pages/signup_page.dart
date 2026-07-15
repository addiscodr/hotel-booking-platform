import 'package:flutter/material.dart';
import 'package:hotel_booking_platform/services/widget_support.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 45),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "assets/images/signup.png",
                height: 300,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 5),
            Text("Sign Up", style: AppWidget.headlineTextStyle(25)),
            const SizedBox(height: 5),
            Text(
              "Please enter the details to continue",
              style: AppWidget.normalTextStyle(18),
            ),
          ],
        ),
      ),
    );
  }
}
