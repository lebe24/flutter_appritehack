import 'package:flutter/material.dart';

class TextCustom_field extends StatelessWidget {
  const TextCustom_field({super.key, required this.controller, required this.hintText, required this.obscureText});
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        color: Colors.black
      ),
      validator: (val) => val!.isEmpty ? ' ' : null,
      controller: controller,
      obscureText: obscureText,
      decoration:  InputDecoration(
        suffixIcon: const Icon(Icons.visibility_off),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
        ),
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.black)
      ),
    );
  }
}