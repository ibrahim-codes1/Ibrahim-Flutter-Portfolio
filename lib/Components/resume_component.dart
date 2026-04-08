import 'package:flutter/material.dart';
import 'package:portfolio/widgets/AnimatedWidgets/Info_Indicator_one.dart';
import 'package:portfolio/widgets/AnimatedWidgets/Info_Indicator_two.dart';
import 'package:portfolio/widgets/Misc/TextBlockOne.dart';
import 'package:portfolio/widgets/Misc/title_heading.dart';
import 'package:portfolio/widgets/Misc/title_one.dart';
import 'package:portfolio/widgets/Text/poppins.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:google_fonts/google_fonts.dart';
class ResumeComponent extends StatelessWidget {
  const ResumeComponent({super.key});

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
            title: "Resume",
            Subtitle: "Combination of Skill\n & Experience",
          ),
          SizedBox(height: 100),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TitleOne(text: "Education:"),
                      SizedBox(height: 30),
                      TextBlockOne(
                        description: "Lahore public School",
                        subTextMain: "2018-2020",
                        textMain: "Matric in computer science",
                        longText:
                            "Completed Matriculation with Computer Science, gaining a strong foundation in programming, mathematics, and problem-solving.",
                      ),
                      SizedBox(height: 50),
                      TextBlockOne(
                        description: "Punjab Group Of College",
                        subTextMain: "2021-2023",
                        textMain: "Intermediate - FSc Pre-Engineering",
                        longText:
                            "Gained strong knowledge in core science subjects including Mathematics, Physics, and Chemistry, developing analytical and problem-solving skills.",
                      ),
                      SizedBox(height: 50),
                      TextBlockOne(
                        description: "University of Lahore",
                        subTextMain: "2024-2028",
                        textMain: "Bachelor in Software Engineering",
                        longText:
                            "Currently pursuing a Bachelor's degree in Software Engineering at the University of Lahore, focusing on programming, software development, databases, and emerging technologies to build a strong career in the IT industry.",
                      ),
                      SizedBox(height: 60,),
                      TitleOne(text: "Experience  &  Skill"),
                      SizedBox(
                        height: 30,
                      ),
                      TextBlockOne(
                        description: "Google",
                        subTextMain: "2025",
                        textMain: "Cybersecurity Professional Certificate",
                        longText:
                            "Successfully completed the Google Cybersecurity Professional Certificate, an online program consisting of 8 courses with hands-on, practice-based assessments. Developed strong skills in beginner-level Python, Linux, SQL, Security Information and Event Management (SIEM) tools, and Intrusion Detection Systems (IDS). Gained expertise in identifying cybersecurity risks, threats, and vulnerabilities, along with techniques to mitigate them. The program also covered practical areas such as managing security risks, network security, incident detection and response, and automating tasks with Python.",
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                padding: EdgeInsets.only(left: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      TitleOne(text: "Personal Skill"),
                      SizedBox(
                        height: 30,
                      ),
                      InfoIndicatorOne(
                        text: "Time Management",
                        widthTotal: 500,
                        widthActual: 350,
                      ),
                       SizedBox(
                        height: 30,
                      ),
                      InfoIndicatorOne(
                        text: "Efficiency",
                        widthTotal: 500,
                        widthActual: 400,
                      ),
                       SizedBox(
                        height: 30,
                      ),
                      InfoIndicatorOne(
                        text: "Integrity",
                        widthTotal: 500,
                        widthActual: 500,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                       TitleOne(text: "Software Skill"),
                       SizedBox(
                        height: 30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              child: InfoIndicatorTwo(
                                text: "Python",
                                value: 70,
                              ),
                            ),
                          ),
                         Expanded(
                            child: Container(
                              child: InfoIndicatorTwo(
                                text: "C++",
                                value: 70,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                       Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              child: InfoIndicatorTwo(
                                text: "My SQL",
                                value: 60,
                              ),
                            ),
                          ),
                         Expanded(
                            child: Container(
                              child: InfoIndicatorTwo(
                                text: "Flutter",
                                value: 70,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}



