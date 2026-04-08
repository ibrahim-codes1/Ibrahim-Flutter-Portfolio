import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedShapeContainer extends StatefulWidget {
  const AnimatedShapeContainer({super.key});

  @override
  State<AnimatedShapeContainer> createState() => _AnimatedShapeContainerState();
}

class _AnimatedShapeContainerState extends State<AnimatedShapeContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
      reverseDuration: const Duration(seconds: 10),
    )..forward();

    animation = Tween<double>(
      begin: -math.pi / 4,
      end: -math.pi / 3,
    ).animate(controller);

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
        return Transform.rotate(
          angle: animation.value,
          alignment: Alignment.center, // 👈 center se rotate karega
          child: Container(
            height: 1200, // Image se badi
            width: 1000,
            decoration: BoxDecoration(
              color: const Color(0xffFFB324),
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        );
      },
    );
  }
}
