import 'package:flutter/material.dart';
import 'package:lox/constants/appcolor.dart';
import 'package:lox/screens/add_places.dart';
import 'package:lox/screens/location.dart';
import 'package:lox/screens/login.dart';
import 'package:lox/screens/saved_places.dart';
import 'package:lox/screens/select_payment.dart';
import 'package:lox/screens/select_ride.dart';
import 'package:lox/screens/signup.dart';
import 'package:lox/screens/splash.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lox',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.yellow,
      ),
      home: const Splash(),
    );
  }
}
