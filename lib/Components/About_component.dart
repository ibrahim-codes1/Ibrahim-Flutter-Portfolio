import 'package:flutter/material.dart';
import 'package:portfolio/widgets/Buttons/gradient_button_container.dart';
import 'package:portfolio/widgets/Cursor/animated_circle_cursor.dart';
import 'package:portfolio/widgets/Misc/info_tileone.dart';
import 'package:portfolio/widgets/Misc/title_heading.dart';
import 'package:portfolio/widgets/Text/poppins.dart';
import 'package:dotted_line/dotted_line.dart';

class AboutComponent extends StatelessWidget {
  const AboutComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
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
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    height: 650,
                    width: 400,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      // child: Image.asset("assets/images/Me.jpeg"),
                    ),
                  ),
                  Positioned(
                    top: 80,
                    right: 50,
                    child: Container(
                      height: 450,
                      width: 300,
                      padding: EdgeInsets.all(40),
                      decoration: BoxDecoration(
                        color: Color(0xffFF451B),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        children: [
                          InfoTileOne(
                            title: "Name",
                            subTitle: "Muhammad Ibrahim",
                          ),
                          SizedBox(height: 20),
                          InfoTileOne(
                            title: "Email",
                            subTitle: "ibrahimsheikh432@gmail.com",
                          ),
                          SizedBox(height: 20),
                          InfoTileOne(
                            title: "Phone Number",
                            subTitle: "03214502509",
                          ),
                          SizedBox(height: 20),
                          InfoTileOne(
                            title: "Address",
                            subTitle: "Lahore,pakistan",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleHeading(
                    title: "About Me:",
                    Subtitle:"Turning curiosity into creativity through code.",
                  ),

                  SizedBox(height: 20),
                  Poppins(
                    text:
                      "As a Software Engineering student, I’m building my foundation in programming and development while working on projects that help me learn and grow.",
                    fontSize: 18,
                    color: Colors.black45,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(height: 20),
                  AnimatedCircleCursorMouseRegion(
                    child: GradientButtonContainer(
                      title: "Download CV",
                      isGradientvertical: false,
                      width: 250,
                      height: 80,
                      overlaycolor: Colors.red,
                      clr: [Color(0xffFF451B), Color(0xffFF451B)],
                      onpressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

