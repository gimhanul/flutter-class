import 'package:flutter/material.dart';

class ExampleStateful extends StatefulWidget {
  ExampleStateful(
    this.color, {
    Key? key,
  }) : super(key: key) {
    print('ExampleStateful constructor');
  }

  final Color color;

  @override
  State<ExampleStateful> createState() {
    print('ExampleStateful createState');
    return _ExampleStatefulState();
  }
}

class _ExampleStatefulState extends State<ExampleStateful> {
  @override
  void didChangeDependencies() {
    print('ExampleStateful didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant ExampleStateful oldWidget) {
    print('ExampleStateful didUpdateWidget');
    print('${oldWidget.color}');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    print('ExampleStateful deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('ExampleStateful dispose');
    super.dispose();
  }

  late Color stateColor;
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    stateColor = widget.color;
    print('ExampleStateful build');
    return InkWell(
      onTap: () {
        setState(() {
          isClicked = !isClicked;
          print('isClicked:');
        });
      },
      child: Container(
        color: isClicked ? stateColor : Colors.green,
      ),
    );
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    print('setState:' + fn.runtimeType.toString());
  }
}
