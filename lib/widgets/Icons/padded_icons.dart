import 'package:flutter/material.dart';
import 'package:portfolio/widgets/Cursor/animated_circle_cursor.dart';

class PaddedIcons extends StatelessWidget {
  final IconData ficon;
  final double? padding;
  final Color color;

  const PaddedIcons({
    super.key,
    required this.ficon,
    this.padding,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedCircleCursorMouseRegion(
      child: Padding(
        padding: padding != null ? EdgeInsets.all(padding!) : const EdgeInsets.all(8.0),
        child: Icon(
          ficon,
          color: color,
        ),
      ),
    );
  }
}















