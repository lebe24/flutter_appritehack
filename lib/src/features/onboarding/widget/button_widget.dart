import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
     required this.function, required this.text, required this.color , required this.borderSideColor, required this.textcolor
  });

  final VoidCallback function ;
  final String text;
  final Color color,textcolor;
  final Color borderSideColor ;

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
    child: Text(text,
      style:  TextStyle(
      color: textcolor,
     ),
    ),
    );
  }
}