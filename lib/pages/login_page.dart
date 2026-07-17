import 'package:flutter/material.dart';
import 'package:hotel_booking_platform/pages/signup_page.dart';
import 'package:hotel_booking_platform/services/widget_support.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                "assets/images/login.png",
                height: 300,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 30),
            Text("Login", style: AppWidget.headlineTextStyle(25)),
            const SizedBox(height: 20),

            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              decoration: BoxDecoration(
                color: Color(0xFFECECF8),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.email,
                    color: const Color.fromARGB(255, 2, 104, 186),
                  ),
                  hintText: "Enter Email",
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              decoration: BoxDecoration(
                color: Color(0xFFECECF8),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.password,
                    color: const Color.fromARGB(255, 2, 104, 186),
                  ),
                  hintText: "Enter Password",
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password? ",
                    style: AppWidget.normalTextStyle(16),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 2, 104, 186),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Log In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: AppWidget.normalTextStyle(16),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupPage()),
                    );
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 2, 104, 186),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
