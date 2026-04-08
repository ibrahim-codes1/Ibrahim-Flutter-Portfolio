import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/Cursor/animated_circle_cursor.dart';

class GradientButtonContainer extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final List<Color> clr;
  final Color overlaycolor;
  final bool isGradientvertical;
  final VoidCallback onpressed;

  const GradientButtonContainer({
    super.key,
    required this.clr,
    required this.title,
    required this.isGradientvertical,
    required this.height,
    required this.width,
    required this.onpressed,
    required this.overlaycolor,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedCircleCursorMouseRegion(
      child: Container(
        height: height,
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            elevation: 10,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: isGradientvertical
                      ? Alignment.topCenter
                      : Alignment.centerLeft,
                  end: isGradientvertical
                      ? Alignment.bottomCenter 
                      : Alignment.centerRight, 
                  colors: clr,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(8), 
                ),
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all<double>(0),
                  overlayColor:
                      MaterialStateProperty.all<Color>(overlaycolor.withOpacity(0.2)), 
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.zero), 
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), 
                    ),
                  ),
                ),
                onPressed: onpressed,
                child: Center( 
                  child: Text(
                    title,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 20, 
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
