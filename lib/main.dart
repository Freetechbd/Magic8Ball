import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Magic8Ball(),
    ),
  );
}

class Magic8Ball extends StatefulWidget {
  const Magic8Ball({Key? key}) : super(key: key);

  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int count = 1;
  void Counter() {
    count = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text("Magic 8 Ball"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                child: Image(
                  image: AssetImage("images/ball$count.png"),
                ),
                onPressed: () {
                  setState(() {
                    Counter();
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
