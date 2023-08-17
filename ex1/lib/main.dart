import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('나는 부자다'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white70,
        width: MediaQuery.of(context).size.width,
        height: double.maxFinite,
        child: Column(
          children: [
            // Image.network('https://cdn.pixabay.com/photo/2014/10/24/08/09/diamond-500872_960_720.jpg'),
            Image.asset(
              'assets/images/bosuck.gif',
              height: 450,
            ),
            Row(
              children: [
                Text(
                  '훔치고 싶냐?\n못땟어',
                  style:
                      TextStyle(fontFamily: 'NeoDunggeunmoPro', fontSize: 50),
                ),
                Icon(CupertinoIcons.smiley_fill)
              ],
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            )
          ],
        ),
      ),
    );
  }
}

//who wrote this code? kekw
