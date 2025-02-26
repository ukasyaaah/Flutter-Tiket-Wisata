import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tiket_wisata/constants/color.dart';
import 'package:tiket_wisata/gen/assets.gen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children: [
              Center(
                child: Text(
                  'Login to Your Account',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: MyColors.secondary,
                    fontSize: 25,
                  ),
                ),
              ),

              Assets.images.loginPng.image(),
              SizedBox(height: 20),

              TextField(
                decoration: InputDecoration(

                  icon: Icon(Icons.supervised_user_circle),
                  iconColor: MyColors.ternary,

                  labelText: 'Username / Email',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyColors.secondary),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.key),
                  iconColor: MyColors.ternary,

                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyColors.secondary),
                  ),
                ),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/mainpage');
                },

                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(MyColors.ternary),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: MyColors.secondary,
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
