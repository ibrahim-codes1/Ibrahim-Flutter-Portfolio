import 'package:flutter/material.dart';
import 'package:portfolio/widgets/Text/poppins.dart';

class IconCard extends StatefulWidget {
  const IconCard({super.key});

  @override
  State<IconCard> createState() => _IconCardState();
}

class _IconCardState extends State<IconCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => isHovered = true),
      onExit: (event) => setState(() => isHovered = false),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              isHovered
                  ? BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 10,
                      blurRadius: 20,
                    )
                  : BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      spreadRadius: 10,
                      blurRadius: 20,
                    ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xffFFB324),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.dashboard_outlined,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
                const SizedBox(height: 20),
                Poppins(
                  text: "C++",
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                ),
                Poppins(
                  text: "detail of c++",
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xff9E9E9E),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
