import 'package:flutter/material.dart';
import 'package:portfolio/widgets/Cursor/animated_circle_cursor.dart';
import 'package:portfolio/widgets/Text/poppins.dart';

class Haptictextbutton extends StatelessWidget {
  final String text;
  final Color color;
  final Function() onpressed;

  Haptictextbutton({required this.text, required this.color,required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return AnimatedCircleCursorMouseRegion(
      child: TextButton(
        onPressed: onpressed,
        child: Poppins(
          text: text,
          color: color,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
