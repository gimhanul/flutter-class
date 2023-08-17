import 'package:flutter/material.dart';
import 'package:lifecycle/pages/deactive_page.dart';
import 'package:lifecycle/pages/inherited_widget.dart';

import 'pages/comparison_page.dart';

void main() => runApp(MaterialApp(
      home: MainScreen(),
    ));

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildRouteButton(
              context: context,
              buttonText: 'Stateful stateless 비교',
              nextRoute: ComparisonPage(),
            ),
            buildRouteButton(
              context: context,
              buttonText: 'Deactive',
              nextRoute: DeactivePage(),
            ),
            buildRouteButton(
              context: context,
              buttonText: 'InheritedWidgetPage',
              nextRoute: InheritedWidgetPage(),
            )
          ],
        ),
      ),
    );
  }

  TextButton buildRouteButton({required BuildContext context, required String buttonText, required Widget nextRoute}) {
    return TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => nextRoute),
          );
        },
        child: Text(buttonText));
  }
}
