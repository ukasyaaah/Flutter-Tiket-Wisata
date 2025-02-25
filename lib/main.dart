import 'package:flutter/material.dart';
import 'package:tiket_wisata/constants/color.dart';
import 'package:tiket_wisata/pages/login_form.dart';
import 'package:tiket_wisata/pages/main_page.dart';
import 'package:tiket_wisata/pages/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tiket Wisata',
      initialRoute: '/',
      // theme: ThemeData(),
      // home: SplashScreen(),
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginForm(),
        '/mainpage': (context) => MainPage(),
      },
    );
  }
}
