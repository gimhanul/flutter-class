import 'dart:async';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List imageUrl = [
    'https://picsum.photos/id/237/200/300',
    'https://picsum.photos/id/27/200/300',
    'https://picsum.photos/id/23/200/300',
    'https://picsum.photos/id/37/200/300',
    'https://picsum.photos/id/7/200/300',
  ];
  PageController pageController = PageController(initialPage: 0);

  late Timer timer;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(milliseconds: 1000), (timer) {
      currentPage = ((pageController.page ?? 0).toInt() + 1) % imageUrl.length;
      setState(() {});
      pageController.animateToPage(currentPage, duration: Duration(milliseconds: 500), curve: Curves.linear);
    });
  }
  
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              currentPage = index;
              setState(() {

              });
            },
            controller: pageController,
            children: imageUrl.map((e) => Image.network(e, fit: BoxFit.cover,)).toList(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(imageUrl.length, (index) =>
                  InkWell(
                    onTap: () {
                      print('눌림');
                      pageController.animateToPage(index,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.fastOutSlowIn);
                      currentPage = index;
                      setState(() {

                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(color: index == currentPage ? Colors.greenAccent : Colors.white, borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
