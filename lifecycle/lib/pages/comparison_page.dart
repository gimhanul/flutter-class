import 'package:flutter/material.dart';

import '../component/example_stateful.dart';
import '../component/example_stateless.dart';

class ComparisonPage extends StatefulWidget {
  const ComparisonPage({super.key});

  @override
  _ComparisonPageState createState() => _ComparisonPageState();
}

class _ComparisonPageState extends State<ComparisonPage> {
  TextStyle textStyle = TextStyle(fontSize: 20);
  bool existStateless = false;
  bool existStateful = false;
  bool isBlueStateless = false;
  bool isBlueStateful = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Column(
              children: [
                Text(
                  'Stateless Widget',
                  style: textStyle,
                ),
                Expanded(
                    child: existStateless
                        ? ExampleStateless(isBlueStateless ? Colors.blue : Colors.red)
                        : SizedBox.shrink()),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        existStateless = !existStateless;
                      });
                    },
                    child: Text(existStateless ? '없애기' : '만들기')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isBlueStateless = !isBlueStateless;
                      });
                    },
                    child: Text('색 변경'))
              ],
            )),
            Divider(
              thickness: 4,
              height: 20,
            ),
            Expanded(
                child: Column(
              children: [
                Text(
                  'Stateful Widget',
                  style: textStyle,
                ),
                Expanded(
                    child:
                        existStateful ? ExampleStateful(isBlueStateful ? Colors.blue : Colors.red) : SizedBox.shrink()),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        existStateful = !existStateful;
                      });
                    },
                    child: Text(existStateful ? '없애기' : '만들기')),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isBlueStateful = !isBlueStateful;
                      });
                    },
                    child: Text('색 변경'))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
