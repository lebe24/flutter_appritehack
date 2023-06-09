import 'package:flutter/material.dart';
import 'package:flutter_appritehack/src/common/card.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Cards(
      width: 350,
      height: 190,
      function: null,
    ));
  }
}