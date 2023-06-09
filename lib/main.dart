import 'package:flutter/material.dart';
import 'package:flutter_appritehack/src/features/onboarding/mainboard.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() async{
  runApp(
   const ProviderScope(
      child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      title: 'Appwrite hackathon',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        splashColor: Colors.black
      ),
      home: const Onboard()
    );
  }
}
