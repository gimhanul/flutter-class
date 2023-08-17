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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
              width: double.maxFinite,
              height: double.maxFinite,
              color: Colors.greenAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(width: 50, height: 50, color: Colors.white,),
                        Container(width: 50, height: 50, color: Colors.black,),
                        Container(width: 50, height: 50, color: Colors.white,),
                        Container(width: 50, height: 50, color: Colors.black,),
                      ]
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(width: 50, height: 50, color: Colors.white,),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(width: 50, height: 50, color: Colors.white,),
                        Container(width: 50, height: 50, color: Colors.black,),
                        Container(width: 50, height: 50, color: Colors.white,),
                        Container(width: 50, height: 50, color: Colors.black,),
                      ]
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(width: 50, height: 50, color: Colors.black,),
                    ],
                  )
                ],
              ),
            )
        )
    );
  }
}