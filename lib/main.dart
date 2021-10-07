import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('8 ball'),
          backgroundColor: Colors.lightBlue.shade900,
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ball = 1;
  void changeBall() {
    ball = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    changeBall();
                  });
                },
                child: Image(
                  image: AssetImage('images/ball$ball.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
