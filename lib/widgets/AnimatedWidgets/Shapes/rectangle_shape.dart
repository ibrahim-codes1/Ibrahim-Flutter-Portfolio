import 'package:flutter/material.dart';

class RectangleShape extends StatefulWidget {
  final double? width;
  final double? height;
  final double? strokeWidth;
  final Color? lineColor;
  final StrokeCap? capStyle;
  final StrokeJoin? strokeJoin;
  final PaintingStyle? paintingStyle;

  RectangleShape({
    this.width,
    this.height,
    this.strokeWidth,
    this.lineColor,
    this.capStyle,
    this.strokeJoin,
    this.paintingStyle,
  });

  @override
  State<RectangleShape> createState() => _RectangleShapeState();
}

class _RectangleShapeState extends State<RectangleShape>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      reverseDuration: const Duration(seconds: 10),
      duration: const Duration(seconds: 10),
    )..forward();

    animation = Tween<double>(begin: 1, end: 0.5).animate(controller);

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
        return Transform(
          transform: Matrix4.diagonal3Values(animation.value, animation.value, 1),
          alignment: Alignment.center,
          child: SizedBox(
            width: widget.width ?? 100,
            height: widget.height ?? 100,
            child: CustomPaint(
              painter: RectanglePainter(
                strokeWidth: widget.strokeWidth,
                lineColor: widget.lineColor,
                capStyle: widget.capStyle,
              ),
            ),
          ),
        );
      },
    );
  }
}

class RectanglePainter extends CustomPainter {
  final double? strokeWidth;
  final Color? lineColor;
  final StrokeCap? capStyle;

  RectanglePainter({
    this.strokeWidth,
    this.lineColor,
    this.capStyle,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = strokeWidth ?? 10
      ..color = lineColor ?? Colors.red
      ..style = PaintingStyle.stroke
      ..strokeCap = capStyle ?? StrokeCap.round;

    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
