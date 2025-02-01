import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final IconData? suffixIcon;
  final Color? baseColor;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    this.suffixIcon,
    this.baseColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          suffixIcon: suffixIcon != null
              ? Icon(
                  suffixIcon,
                  color: baseColor ?? Color(0xFF6D6D6D),
                )
              : null,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: baseColor ?? Color(0xFF6D6D6D)),
              borderRadius: BorderRadius.circular(8)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 1)),
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: baseColor ?? Color(0xFF6D6D6D)),
        ));
  }
}
