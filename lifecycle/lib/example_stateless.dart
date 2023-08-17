import 'package:flutter/material.dart';
import 'package:lifecycle/example_animation.dart';

class ExampleStateless extends StatelessWidget {
  ExampleStateless(this.color, {Key? key}) : super(key: key) {
    print('ExampleStateless constructor');
  }
  final Color color;

  @override
  Widget build(BuildContext context) {
    print('ExampleStateless build');
    return Row(
      children: [
        ExampleAnimation(),
        Expanded(
          child: Container(
            color: color,
          ),
        ),
      ],
    );
  }
}
