import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiket_wisata/constants/color.dart';
import 'package:tiket_wisata/widgets/kolom_input.dart';
import 'package:tiket_wisata/widgets/tombol.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: MyColors.background,
        appBar: AppBar(
          leading: SizedBox(
            child: ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: MyColors.secondary,
              ),

              contentPadding: EdgeInsets.only(top: 12, left: 12),
              title: Text('Selamat Pagi'),
              titleTextStyle: GoogleFonts.inter(fontSize: 14),
              subtitle: Text('Ukhasyah'),
              subtitleTextStyle: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: 21,
              ),
            ),
          ),

          leadingWidth: 250,
          toolbarHeight: 80,
          backgroundColor: MyColors.ternary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(12)),
          ),
        ),

        body: Center(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    // color: MyColors.ternary,
                    border: Border.all(
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: MyColors.secondary,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dari',
                          style: GoogleFonts.inter(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 12),
                        KolomInput(
                          isHidding: false,
                          hintText: 'Semarang',
                          prefixIcon: Icons.flight_outlined,
                          // controller: controller,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Ke',
                          style: GoogleFonts.inter(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 12),
                        KolomInput(
                          isHidding: false,
                          hintText: 'Nusa Tenggara Barat',
                          prefixIcon: Icons.flight_land_sharp,
                          // controller: controller,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Tanggal',
                          style: GoogleFonts.inter(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 12),
                        KolomInput(
                          isHidding: false,
                          hintText: '12 Maret 2026',
                          prefixIcon: Icons.calendar_month_rounded,
                          // controller: controller,
                        ),

                        SizedBox(height: 20),
                        Tombol(
                          height: 40,
                          width: 100,
                          bgcolor: MyColors.ternary,
                          radiusCircular: 6,
                          borderColor: MyColors.secondary,
                          text: 'Pesan',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
