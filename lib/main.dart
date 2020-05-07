import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask me anything'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int imageNo = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Expanded(
          child: FlatButton(
            onPressed: () {
              setState(() {
                imageNo = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$imageNo.png'),
          ),
        ),
      ),
    );
  }
}
