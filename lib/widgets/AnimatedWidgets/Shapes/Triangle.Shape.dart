import 'package:flutter/material.dart';

class Triangleshape extends StatefulWidget {
  final double width;
  final double height;
  final double? strokeWidth;
  final Color? lineColor;
  final StrokeCap? capStyle;
  final StrokeJoin? strokeJoin;
  final PaintingStyle? paintingStyle;

  const Triangleshape({
    this.width = 100,
    this.height = 100,
    this.strokeWidth,
    this.lineColor,
    this.capStyle = StrokeCap.round,       // 👈 Default round edges
    this.strokeJoin = StrokeJoin.round,    // 👈 Default round corners
    this.paintingStyle,
    Key? key,
  }) : super(key: key);

  @override
  State<Triangleshape> createState() => _TriangleshapeState();
}

class _TriangleshapeState extends State<Triangleshape>
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
        controller.reverse();
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
          transform: Matrix4.diagonal3Values(
              animation.value, animation.value, 1),
          alignment: Alignment.center,
          child: SizedBox(
            width: widget.width,
            height: widget.height,
            child: CustomPaint(
              painter: TrianglePainter(
                strokeWidth: widget.strokeWidth,
                lineColor: widget.lineColor,
                capStyle: widget.capStyle,
                strokeJoin: widget.strokeJoin,
                paintingStyle: widget.paintingStyle,
              ),
            ),
          ),
        );
      },
    );
  }
}

class TrianglePainter extends CustomPainter {
  final double? strokeWidth;
  final Color? lineColor;
  final StrokeCap? capStyle;
  final StrokeJoin? strokeJoin;
  final PaintingStyle? paintingStyle;

  TrianglePainter({
    this.strokeWidth,
    this.lineColor,
    this.capStyle,
    this.strokeJoin,
    this.paintingStyle,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = strokeWidth ?? 6
      ..color = lineColor ?? Colors.red
      ..style = paintingStyle ?? PaintingStyle.stroke
      ..strokeCap = capStyle ?? StrokeCap.round
      ..strokeJoin = strokeJoin ?? StrokeJoin.round;

    final path = Path();

    // Top vertex
    path.moveTo(size.width / 2, 0);

    // Bottom-left
    path.lineTo(0, size.height);

    // Bottom-right
    path.lineTo(size.width, size.height);

    // Close path back to top
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
