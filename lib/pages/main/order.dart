import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiket_wisata/constants/color.dart';
import 'package:tiket_wisata/pages/detail_order_page.dart';

import 'package:tiket_wisata/widgets/kolom_input.dart';
import 'package:tiket_wisata/widgets/tombol.dart';

class OrderPage extends StatefulWidget {
  OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  List<Map<String, dynamic>> tikets = [
    {
      'nama': 'Gunung Rinjani',
      'price': 20000,
      'category': 'Mancanegara',
      'count': 0,
    },
    {
      'nama': 'Gunung Rinjani',
      'price': 20000,
      'category': 'Nusantara',
      'count': 0,
    },
    {
      'nama': 'Gunung Rinjani',
      'price': 20000,
      'category': 'Popular',
      'count': 0,
    },
    {
      'nama': 'Gunung Rinjani',
      'price': 20000,
      'category': 'Popular',
      'count': 0,
    },
  ];

  void updateCount(int index, int value) {
    setState(() {
      tikets[index]['count'] = (tikets[index]['count'] + value).clamp(0, 99);
    });
  }

  void navigateToDetailOrder() {
    // Filter only tickets with count > 0
    final selectedTickets =
        tikets.where((ticket) => ticket['count'] > 0).toList();

    // Calculate total amount
    final totalAmount = tikets.fold(
      0.0,
      (sum, ticket) => sum + (ticket['price'] * ticket['count']),
    );

    Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (context) => DetailOrderPage(
              selectedTickets: selectedTickets,
              totalAmount: totalAmount,
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      appBar: AppBar(
        leading: SizedBox(
          child: ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: MyColors.secondary,
            ),
            contentPadding: EdgeInsets.only(top: 12, left: 12),
            title: Text(
              'Selamat Pagi',
              style: GoogleFonts.inter(
                fontSize: 14,
                color: MyColors.background,
              ),
            ),
            subtitle: Text(
              'Ukhasyah',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: 21,
                color: MyColors.background,
              ),
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              'Penjualan',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 12),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: tikets.length,
              itemBuilder: (context, index) {
                final tiket = tikets[index];

                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 2,
                  margin: EdgeInsets.only(bottom: 12),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tiket['nama'], // Nama tiket
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          tiket['category'],
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Rp ${tiket['price']}',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.remove, color: Colors.red),
                                    onPressed: () => updateCount(index, -1),
                                  ),
                                  Text(
                                    '${tiket['count']}',
                                    style: GoogleFonts.inter(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.add, color: Colors.green),
                                    onPressed: () => updateCount(index, 1),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'Rp ${tiket['price'] * tiket['count']}', // Perhitungan harga total
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                {
                  // Calculate total amount to check if any tickets are selected
                  final double totalAmount = tikets.fold(
                    0.0,
                    (sum, ticket) => sum + (ticket['price'] * ticket['count']),
                  );

                  if (totalAmount <= 0) {
                    // Show a snackbar or alert if no tickets selected
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Silakan pilih tiket terlebih dahulu'),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  } else {
                    // Call the navigation function
                    navigateToDetailOrder();
                  }
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: MyColors.ternary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'Process',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: MyColors.background,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
