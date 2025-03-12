import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:tiket_wisata/constants/color.dart';
import 'package:tiket_wisata/pages/splash_screen.dart';
import 'package:tiket_wisata/pages/success_payment.dart';

class qrisDialog extends StatelessWidget {
  const qrisDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        width: 100,
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Silahkan di Scan',
              style: GoogleFonts.inter(fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 24),
            InkWell(
              onTap:
                  () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SuccessPayment()),
                  ),
              child: SizedBox(
                height: 100.0,
                width: 100.0,
                child: QrImageView(
                  data: 'bayar-qris',
                  version: QrVersions.auto,
                  size: 100.0,
                ),
              ),
            ),
          ],
        ),
      ),
      shadowColor: MyColors.ternary,
    );
  }
}
