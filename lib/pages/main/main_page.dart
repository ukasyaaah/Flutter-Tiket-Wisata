import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiket_wisata/constants/color.dart';
import 'package:tiket_wisata/pages/main/history.dart';
import 'package:tiket_wisata/pages/main/order.dart';
import 'package:tiket_wisata/pages/main/settings.dart';
import 'package:tiket_wisata/widgets/navbar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int curent = 0;

  List pages = [OrderPage(), History(), Settings()];

  @override
  void initState() {
    curent = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: pages[curent],

        bottomNavigationBar: NavBar(
          curentIndex: curent,
          onDestination:
              (value) => setState(() {
                curent = value;
              }),
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.history), label: 'History'),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
