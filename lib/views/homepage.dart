import 'package:flutter/material.dart';
import 'package:portfolio/Components/About_component.dart';
import 'package:portfolio/Components/Portfolio_component.dart';
import 'package:portfolio/Components/Service_component.dart';
import 'package:portfolio/Components/resume_component.dart';
import 'package:portfolio/Provider/tab_dataprovider.dart';
import 'package:portfolio/widgets/AnimatedWidgets/Animated_textbox_slider.dart';
import 'package:portfolio/widgets/AnimatedWidgets/Shapes/Triangle.Shape.dart';
import 'package:portfolio/widgets/AnimatedWidgets/Shapes/circle_grid_shape.dart';
import 'package:portfolio/widgets/AnimatedWidgets/Shapes/circle_shape.dart';
import 'package:portfolio/widgets/AnimatedWidgets/Shapes/line_shapes.dart';
import 'package:portfolio/widgets/AnimatedWidgets/Shapes/rectangle_shape.dart';
import 'package:portfolio/widgets/AnimatedWidgets/animated_shapes_container.dart';
import 'package:portfolio/widgets/Buttons/Haptic_circle.dart';
import 'package:portfolio/widgets/Buttons/gradient_button_container.dart';
import 'package:portfolio/widgets/Cursor/animated_circle_cursor.dart';
import 'package:portfolio/widgets/Icons/padded_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/widgets/Text/poppins.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    String tabData = context.watch<TabDataProvider>().tabData;
    return Scaffold(
      backgroundColor: const Color(0xffF1FAFF),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            /// 🔹 Background Shapes
            Positioned(
              top: 50,
              left: 40,
              child: CircleShape(
                radius: 15,
                strokeWidth: 4,
                lineColor: Color(0xffC9CDFF),
                strokeJoin: StrokeJoin.round,
              ),
            ),
            Positioned(
              top: 180,
              left: 70,
              child: RectangleShape(
                width: 25,
                height: 25,
                strokeWidth: 4,
                lineColor: Color(0xffC9CDFF),
                strokeJoin: StrokeJoin.round,
              ),
            ),
            Positioned(
              top: 360,
              left: 70,
              child: LineShapes(
                width: 40,
                strokeWidth: 4,
                lineColor: Color(0xffC9CDFF),
              ),
            ),
            Positioned(
              top: 460,
              left: 40,
              child: Triangleshape(
                height: 50,
                width: 20,
                strokeWidth: 4,
                lineColor: Color(0xffC9CDFF),
                paintingStyle: PaintingStyle.stroke,
              ),
            ),
            Positioned(
              top: 560,
              left: 120,
              child: CircleGridShape(
                height: 130,
                width: 90,
                gap: 6,
                color: Color(0xffC9CDFF),
                crossAxisCount: 4,
                itemCount: 20,
              ),
            ),

            /// 🔹 Page Content
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1,
                vertical: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Header Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AnimatedCircleCursorMouseRegion(
                        child: SizedBox(
                          height: 80,
                          width: 80,
                          child: Image.asset("assets/images/human.png"),
                        ),
                      ),
                      Row(
                        children: [
                          PaddedIcons(
                            ficon: FontAwesomeIcons.facebookF,
                            color: const Color(0xff3B5999),
                          ),
                          PaddedIcons(
                            ficon: FontAwesomeIcons.twitter,
                            color: const Color(0xff03A9f4),
                          ),
                          PaddedIcons(
                            ficon: FontAwesomeIcons.youtube,
                            color: const Color(0xffFF0000),
                          ),
                          PaddedIcons(
                            ficon: FontAwesomeIcons.instagram,
                            color: const Color(0xffF44535),
                          ),
                          const SizedBox(width: 20),
                          GradientButtonContainer(
                            height: 80,
                            width: 200,
                            clr: [Color(0xffFF451B), Color(0xffFF451B)],
                            title: "Download CV",
                            isGradientvertical: false,
                            onpressed: () {},
                            overlaycolor: Colors.red,
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 60),

                  /// Hero Section
                  Row(
                    children: [
                      // Left side (intro text)
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Poppins(
                              text: "I'm",
                              color: const Color(0xffFF451B),
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                            ),
                            Poppins(
                              text: "Muhammad Ibrahim",
                              color: const Color(0xff222222),
                              fontSize: 90,
                              fontWeight: FontWeight.w700,
                            ),
                            Poppins(
                              text:
                                  "A passionate Software Engineering student, an explorer of technology, and a lifelong learner.",
                              color: const Color(0xff888888),
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                            ),
                            const SizedBox(height: 30),
                            AnimatedCircleCursorMouseRegion(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  HapticCircle(),
                                  const SizedBox(width: 30),
                                  Poppins(
                                    text: "Play Video",
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Right side (image + yellow shape)
                      Expanded(
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            /// 🔹 Yellow Animated Shape (peeche)
                            Align(
                              alignment: Alignment.centerRight,
                              child: SizedBox(
                                height: 340,
                                width: 340,
                                child: AnimatedShapeContainer(),
                              ),
                            ),

                            /// 🔹 Profile Image (upar)
                            Align(
                              alignment: Alignment.centerRight,
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                child: SizedBox(
                                  height: 300,
                                  width: 300,
                                  child: Image.asset(
                                    "assets/images/me2.jpeg",
                                    fit: BoxFit.cover,
                                  )
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 70),

                  /// Horizontal Menu
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Animatedtextboxslider(
                          icon: FontAwesomeIcons.info,
                          title: "About Me",
                          onpressed: () {
                            context
                                .read<TabDataProvider>()
                                .ChangeTabDat("About Me");
                          },
                          tabData: tabData,
                          color: const Color(0xffff451b),
                          width: 250,
                        ),
                        Animatedtextboxslider(
                          icon: FontAwesomeIcons.addressBook,
                          title: "Resume",
                          onpressed: () {
                            context
                                .read<TabDataProvider>()
                                .ChangeTabDat("Resume");
                          },
                          tabData: tabData,
                          color: const Color(0xffff451b),
                          width: 250,
                        ),
                        Animatedtextboxslider(
                          icon: FontAwesomeIcons.thinkPeaks,
                          title: "Portfolio",
                          onpressed: () {
                            context
                                .read<TabDataProvider>()
                                .ChangeTabDat("Portfolio");
                          },
                          tabData: tabData,
                          color: const Color(0xffff451b),
                          width: 250,
                        ),
                        Animatedtextboxslider(
                          icon: FontAwesomeIcons.gears,
                          title: "Service",
                          onpressed: () {
                            context
                                .read<TabDataProvider>()
                                .ChangeTabDat("Service");
                          },
                          tabData: tabData,
                          color: const Color(0xffff451b),
                          width: 250,
                        ),
                        Animatedtextboxslider(
                          icon: FontAwesomeIcons.star,
                          title: "Testimonial",
                          onpressed: () {},
                          tabData: tabData,
                          color: const Color(0xffff451b),
                          width: 250,
                        ),
                        Animatedtextboxslider(
                          icon: FontAwesomeIcons.blog,
                          title: "Blog",
                          onpressed: () {},
                          tabData: tabData,
                          color: const Color(0xffff451b),
                          width: 250,
                        ),
                        Animatedtextboxslider(
                          icon: FontAwesomeIcons.envelope,
                          title: "Contact",
                          onpressed: () {},
                          tabData: tabData,
                          color: const Color(0xffff451b),
                          width: 250,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 70),

                  /// Tab Content
                  tabData == "About Me" ? AboutComponent() : Container(),
                  tabData == "Resume" ? ResumeComponent() : Container(),
                  tabData == "Portfolio" ? PortfolioComponent() : Container(),
                  tabData == "Service" ? ServiceComponent() : Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
