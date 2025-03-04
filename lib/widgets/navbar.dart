import 'package:flutter/material.dart';
import '../constants/color.dart';
import 'package:google_fonts/google_fonts.dart';



class NavBar extends StatelessWidget {
  const NavBar({super.key, required this.curentIndex, required this.onDestination, required this.destinations});

  final int curentIndex;
  final Function(int) onDestination;
  final List<NavigationDestination> destinations;


  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: curentIndex,
      onDestinationSelected: onDestination,
      backgroundColor: MyColors.ternary,
      indicatorColor: MyColors.background,
      indicatorShape: CircleBorder(side: BorderSide(color: MyColors.secondary)),
      labelTextStyle: WidgetStatePropertyAll(
        GoogleFonts.inter(
          color: MyColors.secondary,
          fontWeight: FontWeight.w500,
        ),
      ),
      overlayColor: WidgetStatePropertyAll(
        const Color.fromARGB(255, 186, 186, 186),
      ),
      destinations:  destinations
    );
  }
}



