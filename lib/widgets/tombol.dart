import 'package:flutter/material.dart';
import '../constants/color.dart';
import 'package:google_fonts/google_fonts.dart';

class Tombol extends StatelessWidget {
  const Tombol({
    super.key,

    required this.height,
    required this.width,
    required this.bgcolor,
    required this.radiusCircular,
    required this.borderColor,
    required this.text,
    required this.onPressed,
  });

  final double height;
  final double width;
  final Color bgcolor;
  final double radiusCircular;
  final Color borderColor;

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: bgcolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusCircular),
            side: BorderSide(color: borderColor, width: 0.5),
          ),
        ),
        onPressed: onPressed,
        child: Text(text, style: GoogleFonts.inter(color: MyColors.secondary)),
      ),
    );
  }
}
