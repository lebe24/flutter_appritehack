import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AuthField extends StatelessWidget {
  const AuthField({super.key, required this.hintText, required this.controller});

  final String hintText;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller: controller,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: Colors.white,
            width: 3,
          ),
        ),
      ),
    );
  }
}