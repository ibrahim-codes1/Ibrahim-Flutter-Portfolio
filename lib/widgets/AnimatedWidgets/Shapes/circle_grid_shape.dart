import 'package:flutter/material.dart';

class CircleGridShape extends StatefulWidget {
  final double? height;
  final double? width;
  final Color? color;
  final int? crossAxisCount;
  final int? itemCount;
  final bool? isAnimationHorizontal;
  final double? gap;

  CircleGridShape({
    this.height,
    this.width,
    this.color,
    this.crossAxisCount,
    this.itemCount,
    this.isAnimationHorizontal,
    this.gap,
  });

  @override
  State<CircleGridShape> createState() => _CircleGridShapeState();
}

class _CircleGridShapeState extends State<CircleGridShape>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      reverseDuration: Duration(seconds: 10),
      duration: Duration(seconds: 10),
    )..forward();

    animation = Tween<double>(begin: 0, end: -100).animate(controller);

    controller.addListener(() {
      if (controller.isCompleted) {
        controller.reset();
      }
      if (controller.isDismissed) {
        controller.forward();
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Transform.translate(
          offset: widget.isAnimationHorizontal ?? true ? Offset(animation.value, 0) : Offset(0, animation.value),
          child: Container(
            height: widget.height,
            width: widget.width,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: widget.crossAxisCount ?? 5,
              ),
              itemCount: widget.itemCount ?? 12,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(widget.gap ?? 2.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: widget.color ?? Colors.blue,
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
