import 'package:flutter/material.dart';

class Dot extends StatefulWidget {
  const Dot({
    required this.color,
    required this.delayTime,
    super.key,
  });
  final int delayTime;
  final Color color;

  @override
  State<Dot> createState() => _DotState();
}

class _DotState extends State<Dot> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    controller = AnimationController(
        duration: const Duration(milliseconds: 600), vsync: this);

    // ignore: prefer_int_literals
    animation = Tween<double>(begin: 0.0, end: 12.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });
    Future<void>.delayed(Duration(milliseconds: widget.delayTime), () {
      if (mounted) {
        controller.repeat(reverse: true);
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    controller
      ..stop()
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: animation.value,
      height: animation.value,
      decoration: BoxDecoration(color: widget.color, shape: BoxShape.circle),
    );
  }
}
