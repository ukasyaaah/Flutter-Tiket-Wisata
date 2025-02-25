import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tiket_wisata/constants/color.dart';
import 'package:tiket_wisata/pages/login_form.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginForm()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: MyColors.background,
        body: Center(
          child: Column(
            children: [
              Image.asset('assets/images/aliens.png'),
              // SizedBox(height: 1),
              Text(
                'Ticket Wisata App',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
