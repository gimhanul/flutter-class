import 'package:flutter/material.dart';
import 'package:webview/webview_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => WebViewPage()));
          },
          child: const Text('이동'),
        ),
      ),
    );
  }
}
