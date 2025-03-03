import 'package:flutter/material.dart';
import '../constants/color.dart';

class KolomInput extends StatelessWidget {
  const KolomInput({
    super.key,
    required this.isHidding,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
    required this.controller,
  });

  final bool isHidding;
  final IconData prefixIcon;
  final IconButton? suffixIcon;
  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textInputAction: TextInputAction.next,
      obscureText: isHidding,
      obscuringCharacter: '•',

      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.secondary),
        ),
        prefixIcon: Icon(prefixIcon),
        prefixIconColor: MyColors.ternary,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.secondary, width: 1),
          borderRadius: BorderRadius.circular(6),
        ),
        hintText: hintText,
      ),
    );
  }
}
