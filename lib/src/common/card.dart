import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({super.key, required this.width, required this.height, required this.function});
  final double width,height;
  final VoidCallback? function ;

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        GestureDetector(
          onTap: function,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/surf.jpg',
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 10,
          right: 20,
          child: const Text('data')),
        Positioned(
          bottom: 20,
          left: 9,
          child: RichText(
            textDirection: TextDirection.ltr,
            text: const TextSpan(
              text: 'Surf',
              style: TextStyle(
                color:Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 34,
              ),
              children: <TextSpan> [
                TextSpan(
                  text: 'night',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.normal,
                    fontSize: 15
                  ),
                )
              ]
            )),
        )
      ],
    );
  }
}