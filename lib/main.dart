import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
          ),
          body: magicBall(),
        ),
      ),
    );

class magicBall extends StatefulWidget {
  @override
  _magicBallState createState() => _magicBallState();
}

class _magicBallState extends State<magicBall> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            num = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$num.png'),
      ),
    );
  }
}
