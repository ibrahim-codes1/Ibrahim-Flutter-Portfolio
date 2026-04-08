import 'package:flutter/material.dart';
import 'package:portfolio/widgets/Text/poppins.dart';

class TitleHeading extends StatelessWidget {
  final String title;
  final String Subtitle;

  TitleHeading({ required this.title, required this.Subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Poppins(
          text: title,
          fontSize: 25,
          color: Color(0xffFF451B),
          fontWeight: FontWeight.w600,
        ),
        Poppins(
          text: Subtitle,
          fontSize: 44,
          color: Colors.black,
          fontWeight: FontWeight.w800,
        ),
      ],
    );
  }
}
