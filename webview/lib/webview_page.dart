import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  WebViewPage({Key? key}) : super(key: key);

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  var progress = 0;
  var controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
            this.progress = progress;
            setState(() {});
          },
        ),
      )
      ..loadRequest(Uri.parse('https://flutter.dev'));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: () {
          controller.loadRequest(Uri.parse('https://comic.naver.com'));
        }, icon: const Icon(Icons.home)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios)),
      ],
        title: const Text('Flutter Sample Example'),
      ),
      body: Column(
        children: [
          Visibility(
              visible: progress.toDouble() / 100 < 1,
              child: LinearProgressIndicator(
                value: progress.toDouble() / 100,
              )
          ),
          Expanded(child: WebViewWidget(controller: controller)),
        ],
      ),
    );
  }
}
