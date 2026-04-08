import 'package:flutter/material.dart';
import 'package:portfolio/widgets/Misc/Icon_card.dart';
import 'package:portfolio/widgets/Misc/title_heading.dart';

class ServiceComponent extends StatelessWidget {
  const ServiceComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(80),
      decoration: BoxDecoration(
        color: Colors.white, // color yahan de do
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            spreadRadius: 10,
            blurRadius: 20,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleHeading(
            title: "What can you Expect\nfrom me?",
            Subtitle: "Services",
          ),
          SizedBox(height: 60),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemBuilder: (context, index) {
              return IconCard();
            },
          ),
        ],
      ),
    );
  }
}


