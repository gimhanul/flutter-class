import 'package:flutter/material.dart';

class DefaultScreen extends StatelessWidget {
  const DefaultScreen({Key? key, required this.title, required this.body}) : super(key: key);
  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
