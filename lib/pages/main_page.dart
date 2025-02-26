import 'package:flutter/material.dart';
import 'package:tiket_wisata/constants/color.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ListView(
            children: [
              Text(
                'Find Your Dream Destination',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 24),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  label: Text('Search your Destination'),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: MyColors.ternary),
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
