import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/widgets/Cursor/animated_circle_cursor.dart';

class HapticCircle extends StatefulWidget {
  const HapticCircle({super.key});

  @override
  State<HapticCircle> createState() => _HapticCircleState();
}

class _HapticCircleState extends State<HapticCircle> {
  double currRadius = 0;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          currRadius = 10;
        });
      },
      onExit: (event) {
        setState(() {
          currRadius = 0;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xffFFB324),
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.2), spreadRadius: currRadius),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 5.0),
          child: Icon(FontAwesomeIcons.play, color: Colors.white),
        ),
      ),
    );
  }
}
