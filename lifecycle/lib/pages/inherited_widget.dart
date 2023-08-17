import 'package:flutter/material.dart';

class InheritedWidgetPage extends StatefulWidget {
  @override
  State<InheritedWidgetPage> createState() => _InheritedWidgetPageState();
}

class _InheritedWidgetPageState extends State<InheritedWidgetPage> {
  int count = 0;
  @override
  void didChangeDependencies() {
    print('didChangeDependencies1');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      counter: ValueNotifier(count),
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            MyHomePage(),
            InkWell(
              onTap: () {
                count++;
                setState(() {});
              },
              child: Container(
                width: 100,
                height: 100,
                color: Colors.tealAccent,
                child: Center(child: Text('Click')),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CounterProvider extends InheritedWidget {
  final ValueNotifier<int> counter;

  CounterProvider({Key? key, required this.counter, required Widget child}) : super(key: key, child: child);

  static CounterProvider? of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<CounterProvider>();

  void incrementCounter() {
    counter.value++;
  }

  @override
  bool updateShouldNotify(CounterProvider oldWidget) => oldWidget.counter != counter;
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void didChangeDependencies() {
    print('didChangeDependencies2');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final counter = CounterProvider.of(context)!.counter;

    return ValueListenableBuilder(
      valueListenable: counter,
      builder: (context, value, child) {
        return InkWell(
          onTap: () {
            CounterProvider.of(context)!.incrementCounter();
          },
          child: Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
            child: Text(
              '$value',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
        );
      },
    );
  }
}
