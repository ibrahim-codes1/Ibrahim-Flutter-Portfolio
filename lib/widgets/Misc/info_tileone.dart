import 'package:flutter/material.dart';
import 'package:portfolio/widgets/Text/poppins.dart';
import 'package:dotted_line/dotted_line.dart';

class InfoTileOne extends StatelessWidget {
  String title;
  String subTitle;

  InfoTileOne({required this.subTitle,required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Poppins(
          text: title,
          color: Colors.white,
          fontSize: 16,
        ),
        SizedBox(height: 3),
        Poppins(
          text: subTitle,
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 10),
        DottedLine(
          direction: Axis.horizontal,
          lineLength: double.infinity,
          lineThickness: 1.0,
          dashLength: 4.0,
          dashColor: Colors.white,
          dashGapColor: Colors.transparent,
        ),
      ],
    );
  }
}
