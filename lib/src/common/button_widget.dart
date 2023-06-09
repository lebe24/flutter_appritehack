import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key, 
     required this.function, required this.color , required this.borderSideColor, required this.child
  });

  final VoidCallback function ;
  final Color color;
  final Color borderSideColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
    onPressed: function,
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      minimumSize: Size(MediaQuery.of(context).size.width * 0.7, 50),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderSideColor),
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 4.0, // Set the desired elevation value
    ),
    child: child
    );
  }
}