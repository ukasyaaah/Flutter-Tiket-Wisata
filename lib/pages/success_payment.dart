import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:tiket_wisata/constants/color.dart';
import 'package:tiket_wisata/pages/main/main_page.dart';
import 'package:tiket_wisata/widgets/tombol.dart';

class SuccessPayment extends StatelessWidget {
  const SuccessPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('assets/json/success.json'),
              SizedBox(height: 15),
              Text(
                textAlign: TextAlign.center,
                'Pembayaran Berhasil',
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Tombol(
                height: 50,
                width: 200,
                bgcolor: MyColors.ternary,
                radiusCircular: 12,
                borderColor: MyColors.background,
                txtColor: MyColors.background,
                text: 'Selesai',
                onPressed:
                    () => Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/mainpage',
                      (route) => false, 
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
