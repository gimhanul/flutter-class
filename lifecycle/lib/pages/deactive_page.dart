import 'package:flutter/material.dart';

import '../component/example_stateful.dart';

class DeactivePage extends StatefulWidget {
  const DeactivePage({Key? key}) : super(key: key);

  @override
  State<DeactivePage> createState() => _DeactivePageState();
}

class _DeactivePageState extends State<DeactivePage> {
  List<Widget> widgetList = [
    Container(
      width: 100,
      height: 100,
      color: Colors.accents[0],
      key: Key('1'),
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.accents[1],
      key: Key('2'),
    ),
    ExampleStateful(Colors.yellow, height: 100, key: Key('3')),
    Container(
      width: 100,
      height: 100,
      color: Colors.accents[2],
      key: Key('4'),
    ),
    // ExampleStateless(Colors.green, key: Key('4')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ReorderableListView(
        scrollDirection: Axis.vertical,
        onReorder: (int oldIndex, int newIndex) {
          ///tree 변경으로 ExampleStateful build 호출 됨
          setState(() {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }
            var item = widgetList.removeAt(oldIndex);
            widgetList.insert(newIndex, item);
          });
        },
        children: widgetList,
      ),
    );
  }
}
