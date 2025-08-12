import 'package:flutter/material.dart';
import 'package:meditation/config/my_color.dart';

class TextInputFiled extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? obscureText;

  const TextInputFiled({
    super.key,
    required this.hintText,
    this.controller,
    this.keyboardType,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 60,
      decoration: BoxDecoration(
        color: Color(0xffF2F3F7),
        borderRadius: BorderRadius.circular(15),
      ),

      child: TextField(
        obscureText: obscureText ?? false,
        style: TextStyle(color: MyColor.primaryText, fontSize: 16),
        decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 26),
          hintStyle: TextStyle(fontSize: 16, color: Color(0xffA1A4B2)),
        ),
      ),
    );
  }
}
