import 'package:flutter/material.dart';
import 'package:tiket_wisata/constants/color.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              SizedBox(height: 20),
              Image.asset('assets/images/login.png'),
              SizedBox(height: 20),

              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.supervised_user_circle),
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
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
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
