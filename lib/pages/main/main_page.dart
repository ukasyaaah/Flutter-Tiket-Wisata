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

  List pages = [OrderPage(), History(), Settings(), Settings()];

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

        bottomNavigationBar: SizedBox(
          height: 99,
          child: BottomNavigationBar(
            onTap:
                (value) => setState(() {
                  curent = value;
                }),
            currentIndex: curent,

            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.grey,
            selectedItemColor: MyColors.ternary,
            unselectedLabelStyle: TextStyle(color: Colors.grey),
            selectedLabelStyle: TextStyle(color: MyColors.ternary),
            showUnselectedLabels: true,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                icon: Icon(Icons.airplane_ticket_outlined),
                label: 'Ticket',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history_rounded),
                label: 'History',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          ),

          // height: 70,
          // child: BottomAppBar(
          //   height: 99,
          //   shape: CircularNotchedRectangle(),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceAround,
          //     children: [
          //       TextButton.icon(
          //         onPressed: () {},
          //         icon: Icon(Icons.home),
          //         label: Text('data'),
          //       ),

          //       IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          //       SizedBox(width: 40),
          //       IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          //       IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          //     ],
          //   ),
          // ),
        ),
        // floatingActionButton: FloatingActionButton(onPressed: () {}),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
