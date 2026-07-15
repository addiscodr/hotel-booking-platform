import 'package:flutter/material.dart';
import 'package:hotel_booking_platform/pages/detail_page.dart';
import 'package:hotel_booking_platform/pages/home_page.dart';
import 'package:hotel_booking_platform/pages/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotel Booking Platform',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const SignupPage(),
    );
  }
}



// continue from 1:13:00