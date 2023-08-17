import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  Future getIdFromServer() async {
    await Future.delayed(
      Duration(seconds: 3),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: FutureBuilder(
                future: getIdFromServer(),
                builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  return Container(
                    width: double.maxFinite,
                    color: Colors.greenAccent,
                    child: snapshot.connectionState == ConnectionState.waiting ?
                      const Center(child: CircularProgressIndicator()) : const Center(child: Text('SUCCESS')),
                  );
                })),
        Expanded(
            child: Container(
          color: Colors.orangeAccent,
        ))
      ],
    );
  }
}
