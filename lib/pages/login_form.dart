import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tiket_wisata/constants/color.dart';
import 'package:tiket_wisata/gen/assets.gen.dart';
import 'package:tiket_wisata/widgets/kolom_input.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiket_wisata/widgets/tombol.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController _email = TextEditingController();

  TextEditingController _password = TextEditingController();

  bool isHidden = true;

  @override
  void initState() {
    isHidden = true;
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: 400,
                // height: 500,
                decoration: BoxDecoration(
                  // color: Colors.black,
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                    style: BorderStyle.solid,
                    strokeAlign: BorderSide.strokeAlignOutside,
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        'Ticket Wisata',
                        style: GoogleFonts.instrumentSerif(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: MyColors.secondary,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(height: 24),
                      KolomInput(
                        isHidding: false,
                        hintText: 'Email',
                        prefixIcon: Icons.email,
                        controller: _email,
                      ),
                      SizedBox(height: 14),
                      KolomInput(
                        isHidding: isHidden,
                        hintText: 'Password',
                        prefixIcon: Icons.lock,
                        suffixIcon: IconButton(
                          onPressed: () {
                            if (isHidden == true) {
                              isHidden = false;
                            } else {
                              isHidden = true;
                            }
                            setState(() {});
                          },
                          icon: Icon(Icons.remove_red_eye),
                        ),
                        controller: _password,
                      ),
                      SizedBox(height: 14),
                      Tombol(
                        height: 40,
                        width: 400,
                        bgcolor: MyColors.ternary,
                        radiusCircular: 6,
                        borderColor: MyColors.secondary,
                        text: 'Login',
                        onPressed:
                            () => Navigator.of(context).pushNamed('/mainpage'),
                      ),
                      SizedBox(height: 14),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Belum punya akun?",
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              color: MyColors.secondary,
                            ),
                          ),

                          TextButton(
                            style: TextButton.styleFrom(
                              shape: CircleBorder(eccentricity: 0),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Daftar dulu",
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                color: MyColors.secondary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
