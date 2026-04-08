import 'package:flutter/material.dart';
import 'package:portfolio/widgets/Text/poppins.dart';

class TextBlockOne extends StatelessWidget {
  final String textMain;
  final String subTextMain;
  final String description;
  final String longText;

  TextBlockOne({
    required this.textMain,
    required this.subTextMain,
    required this.description,
    required this.longText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Poppins(
                    text: textMain,
                    fontSize: 21,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: 5),
                  Poppins(
                    text: description,
                    fontSize: 21,
                    color: Color(0xff555555),
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),
              Container(
                width: 120,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border: Border.all(
                    color: Colors.grey.shade300,
                    style: BorderStyle.solid,
                    width: 1,
                  ),
                ),
                child: Poppins(
                  text: subTextMain,
                  fontSize: 20,
                  color: Color(0xffFF451B),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Poppins(
          text: longText,
          fontSize: 18,
          color: Color(0xff888888),
          fontWeight: FontWeight.normal,
        ),
      ],
    );
  }
}
