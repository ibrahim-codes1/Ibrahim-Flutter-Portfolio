import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/widgets/Cursor/animated_circle_cursor.dart';
import 'package:portfolio/widgets/Text/poppins.dart';

class Animatedtextboxslider extends StatefulWidget {
  final IconData icon;
  final String title;
  final double? width;
  final Color? color;
  final Function() onpressed;
  final String tabData;

  Animatedtextboxslider({
    required this.icon,
    required this.title,
    this.width,
    this.color,
    required this.onpressed,
    required this.tabData,
  });

  @override
  State<Animatedtextboxslider> createState() => _AnimatedtextboxsliderState();
}

class _AnimatedtextboxsliderState extends State<Animatedtextboxslider> {
  bool showtext = false;
  bool prevSelected = false;
  double adjustWidth() {
    if (showtext) {
      return widget.width ?? 250;
    } else {
      if (widget.tabData == widget.title) {
        setState(() {
          showtext = true;
        });

        return widget.width ?? 250;
      } else {
        return 130;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.tabData != widget.title && prevSelected == true) {
      setState(() {
        showtext = false;
        prevSelected = false;
      });
    }

    return GestureDetector(
      onTap: () {
        widget.onpressed();
        setState(() {
          prevSelected = true;
        });
      },
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            showtext = true;
          });
        },
        onExit: (event) {
          if(widget.tabData != widget.tabData){
          setState(() {
            showtext = false;
          });
          }
         
        },
        child: Padding(
          padding: EdgeInsets.only(right: 10),
          child: AnimatedCircleCursorMouseRegion(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 100),
              height: 130,
              width: adjustWidth(),
              decoration: BoxDecoration(
                color: widget.tabData == widget.title
                    ? Color(0xffff145b)
                    : Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.01),
                    spreadRadius: 10,
                    blurRadius: 20,
                  ),
                ],
              ),
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Icon(
                          widget.icon,
                          size: 35,
                          color: widget.tabData == widget.title
                              ? Colors.white
                              : widget.color,
                        ),
                      ),
                      showtext ? SizedBox(width: 30) : Container(),
                      showtext
                          ? Poppins(
                              text: widget.title,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: widget.tabData == widget.title
                                  ? Colors.white
                                  : Colors.black,
                            )
                          : Container(),
                    ],
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
