import 'dart:async';

import 'package:flutter/material.dart';

class ExampleAnimation extends StatefulWidget {
  const ExampleAnimation({Key? key}) : super(key: key);

  @override
  State<ExampleAnimation> createState() => _ExampleAnimationState();
}

class _ExampleAnimationState extends State<ExampleAnimation> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool isRed = true;
  late Timer timer;

  void _changeColor() {
    setState(() {
      isRed = !isRed;
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    timer = Timer.periodic(Duration(seconds: 2), (timer) {
      _changeColor();
    });
  }

  @override
  void dispose() {
    timer.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        Expanded(
          child: AnimatedContainer(
            decoration: BoxDecoration(
              borderRadius: isRed ? BorderRadius.circular(0) : BorderRadius.circular(30),
              color: isRed ? Colors.red : Colors.blue,
            ),
            duration: Duration(seconds: 1),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: isRed ? BorderRadius.circular(0) : BorderRadius.circular(30),
              color: isRed ? Colors.red : Colors.blue,
            ),
          ),
        )
      ],
    ));
  }
}
