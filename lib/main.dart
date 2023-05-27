import 'package:flutter/material.dart';
import 'package:flutter_appritehack/src/screen/onboarding/mainboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        splashColor: Colors.black
      ),
      home: Onboard()
    );
  }
}